class LikesController < ApplicationController

    def create
      @user = session[:user_id]
      @post = Post.find(params[:post_id])
      @user.like!(@post)
    end

    def destroy
      @user = session[:user_id]
      @like = @user.likes.find_by_post_id(params[:post_id])
      @post = Post.find(params[:post_id])
      @like.destroy!
    end

end
