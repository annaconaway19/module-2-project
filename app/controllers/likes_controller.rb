class LikesController < ApplicationController

    # def create
    #   @user = session[:user_id]
    #   @post = Post.find(params[:post_id])
    #   @user.like!(@post)
    # end
    #
    # def destroy
    #   @user = session[:user_id]
    #   @like = @user.likes.find_by_post_id(params[:post_id])
    #   @post = Post.find(params[:post_id])
    #   @like.destroy!
    # end
    before_action :find_post
    before_action :find_like, only: [:destroy]


      def create
        if already_liked?
          flash[:notice] = "You can't like more than once"
        else
          @post.likes.create(liker_id: current_user.id)
        end
          redirect_to post_path(@post)
      end

      def destroy
        if !(already_liked?)
          flash[:notice] = "Cannot unlike"
        else
          @like.destroy
        end
      redirect_to post_path(@post)
    end

private
    def find_post
      @post = Post.find(params[:post_id])
    end

    def find_like
      @like = @post.likes.find(params[:id])
    end

    def already_liked?
      Like.where(liker_id: current_user.id, post_id:
      params[:post_id]).exists?
    end

    def like_params
      params.require(:like).require(:post_id, :user_id)
    end

end
