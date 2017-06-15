class CommentsController < ApplicationController

  def new
    @comment = Comment.new
    redirect_to blogs_path
  end

  def edit
    @comment - Comment.find(params[:id])
  end

  def show
    @comment = Comment.find_by_id(@blog)
  end

  def create
    @comment = Comment.create(name: params[:comment][:name], user_comments: params[:comment][:user_comments])
    redirect_to blog_path
  end
end
