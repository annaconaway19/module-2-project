class PostsController < ApplicationController

  def index
    @posts = Post.all
  end

  def show
  end

  def new
    @drink_flavors = ["refreshing", "tart", "savory", "fruit", "strong", "spicy", "sweet", "fizzy", "licorice", "herbal", "vegetal", "bitter", "unusual", "floral", "smoky"]
    @post = Post.new
  end

end
