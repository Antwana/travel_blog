class BlogsController < ApplicationController
  def index
    @blogs = Blog.all
  end

  def new
    @blogs = Blog.new
  end

  def show
    @blog = Blog.find(params[:id])
  end

  def edit
  end

  def update
    @blog = Blog.find(params[:id])
  if @blog.update(book_params)
    redirect_to(@blog)
  else
    render :edit
  end
end

  def create
  end
end
