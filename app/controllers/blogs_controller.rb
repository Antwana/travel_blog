class BlogsController < ApplicationController
  def index
    @blogs = Blog.all
  end

  def new
    @blogs = Blog.new
  end

  def show
  end

  def edit
  end

  def create
  end
end
