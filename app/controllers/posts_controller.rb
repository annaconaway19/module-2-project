class PostsController < ApplicationController

  def index
    #byebug
    if params[:search_term]
      @posts = Post.filter(params[:search_by], params[:search_term])
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

  def upvote
    @post = Post.find(params[:id])
    @post.upvote_by current_user
    redirect_to posts
  end

  def downvote
    @post = Post.find(params[:id])
    @post.downvote_by current_user
    redirect_to posts_path
  end


  private

  def post_params
    params.require(:post).permit(:search_by, :search_term, :sort_by, :author_id, :cocktail_id, :image_url,
      post_flavors_attributes: [
        :post_id, :flavor_id
        ])
  end
end
