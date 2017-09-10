class BlogsController < ApplicationController

	before_action :set_blog, only: [:show, :edit, :update, :destroy]
	access all: [:show, :index], user: {except: [:destroy, :new, :create, :update, :edit]}, admin: :all

	def index
		@blogs = Blog.all
	end

	def show
		@blog = Blog.friendly.find(params[:id])
	end

	def new
		@blog = Blog.new
	end

	def create
		@blog = Blog.new(blog_params)

		respond_to do |format|
			if @blog.save
				format.html { redirect_to blogs_path, notice: "Blog was successfully created!" }
			else
				format.html { redirect_to new_blog_path }
			end
		end
	end


	def edit
	end

	def update

	end

	def destroy

	end



	private

	def blog_params
		params.require(:blog).permit(:title, :description, :body)
	end

	def set_blog
		@blog = Blog.friendly.find(params[:id])
	end
end
