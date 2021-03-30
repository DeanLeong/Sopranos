class BlogsController < ApplicationController

  #GET /blogs
  def index
    @blogs = Blog.all.order("id DESC")

    render json: @blogs
  end

  #Get /blogs/1
  def show
    render json: @blog, :include => :user, status: :ok
  end

  #Post /blogs
  def create
    blog = Blog.new(blog_params)
    blog.user = @current_user

    if blog.save
      blog.save!
      render json: blog, status: :created, location: blog
    else
      render json: blog.errors, status: :unprocessable_entity
    end

    #Patch/Put /blogs/1
    def update
      if @blog.update(blog_params)
        render json: @blog
      else
        render json: @blog.errors, status: :unprocessable_entity
      end
    end

    #Delete /blogs/1
    def destroy
      @blog.destroy
    end


    private

    def set_blog
      @blog = Blog.find(params[:id])
    end

    def set_user_blog
      @blog = @current_user.blogs.find(params[:id])
    end

    def blog_params
      params.require(:blog).permit(:title, :content, :author, :imgurl)
    end
end
