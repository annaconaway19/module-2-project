class PostsController < ApplicationController

  def index
    @posts = Post.all

  end

  def new
    #byebug
    @post = Post.new
    @post.post_flavors.build
    @post.post_flavors.build
  end

  def create
    @post = Post.create(post_params)

    # if @post.valid?
    #   @post.save
      redirect_to post_path(@post)
    # else
    #   render :new
    # end
  end

  def show
    @post = Post.find(params[:id])
  end


  private

  def post_params
    params.require(:post).permit(:user_id, :cocktail_id, :image_url,
      post_flavors_attributes: [
        :post_id, :flavor_id
        ])
  end
end
