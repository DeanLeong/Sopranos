class BlogsController < ApplicationController
  before_action :set_blog, only: :show
  before_action :authorize_request, only: [:create, :update, :destroy]
  before_action :set_user_blog, only: [:update, :destroy]

  # GET /blogs
  def index
    @blogs = Blog.all.order("id DESC")

    render json: @blogs
  end

  # GET /blogs/1
  def show
    render json: @blog, :include => :user, status: :ok
  end

  # POST /blogs
  def create
    # binding.pry
    blog = Blog.new(blog_params)
    blog.user = @current_user

    if blog.save
      blog.save!
      render json: blog, status: :created, location: blog
    else
      render json: blog.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /blogs/1
  def update
    if @blog.update(blog_params)
      render json: @blog
    else
      render json: @blog.errors, status: :unprocessable_entity
    end
  end

  # DELETE /blogs/1
  def destroy
    @blog.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_blog
      @blog = Blog.find(params[:id])
    end

    def set_user_blog
      @blog = @current_user.blogs.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def blog_params
      params.require(:blog).permit(:title, :content, :author, :imgurl)
    end
end


#params.require(:blog).permit(:title, :content, :author, :imgurl)
