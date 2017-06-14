class BlogsController < ApplicationController
  def index
    @blogs = Blog.all
  end

  def new
    @blogs = Blog.new
  end

  def show
    @blog = Blog.find(params[:id])
    @comment = Comment.all
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
    @blog = Blog.create!(user_name: params[:blog][:user_name], title: params[:blog][:title], date_traveled: params[:blog][:date_traveled], country: params[:blog][:country], city: params[:blog][:city], place: params[:blog][:place], article: params[:blog][:article], photo_url: params[:blog][:photo_url])
    redirect_to "/blogs/#{@blog.id}"
  end

  def countries
    @blogs = Blog.all
  end

  def destroy
    @blog = Blog.find(params[:id])
    @blog.destroy
    redirect_to blogs_path
  end

end
