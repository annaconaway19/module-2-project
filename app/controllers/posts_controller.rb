class PostsController < ApplicationController

  def index
    #byebug
    if params[:cocktail_search]
      @posts = Post.filter(params[:cocktail_search])
    else
      @posts = Post.all
    end

    if params[:sort_by]
        @posts = @posts.organize(params[:sort_by])
    else
      @posts = @posts.organize('Newest Posts')
    end
  end

  def new
    #byebug
    @post = Post.new(author_id: session[:user_id])
    @post.post_flavors.build
    @post.post_flavors.build
  end

  def create
    @post = Post.create!(post_params)

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
    params.require(:post).permit(:cocktail_search, :sort_by, :author_id, :cocktail_id, :image_url,
      post_flavors_attributes: [
        :post_id, :flavor_id
        ])
  end
end
