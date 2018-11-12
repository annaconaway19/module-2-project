class PostsController < ApplicationController

  def index
    @posts = Post.all
  end

  def new
    #byebug
    @post = Post.new
  end

  def create
    @post = Post.create(post_params)

    if @post.valid?
      @post.save
      redirect_to post_path(@post)
    else
      render :new
    end
  end

  def show
    @post = Post.find(params[:id])
  end


  private

  def post_params
    params.require(:post).permit(:user_id, :cocktail_id, :keyword1, :keyword2, :image_url)
  end
end
