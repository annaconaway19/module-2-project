class UsersController < ApplicationController

  before_action :get_user, only: [:show, :edit, :update]

    def new
        @user = User.new
    end

    def create
      @user = User.create(user_params)
      if @user.valid?
        @user.save
        session[:user_id] = @user.id
        redirect_to account_path(@user)
      else
        render 'new'
      end
    end

    def show
    end

    def edit
      authorized_for_user(@user)
    end

    def update
      @user.update!(user_params)

      if @user.valid?
        @user.save
        redirect_to user_path(@user)
      else
        render 'edit'
      end
    end

  def destroy
    User.find(params[:id]).destroy
    session.clear
    redirect_to login_path
  end

  private

    def get_user
      @user = User.find(params[:id])
    end

    def user_params
      params.require(:user).permit(:email, :first_name, :last_name, :username, :password, :age)
    end

end
