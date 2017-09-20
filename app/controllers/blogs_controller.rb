class BlogsController < ApplicationController

	before_action :set_blog, only: [:show, :edit, :update, :destroy, :toggle_status]
	access all: [:show, :index], user: {except: [:destroy, :new, :create, :update, :edit]}, admin: :all

	def index
		if logged_in?(:admin)
			@blogs = Blog.all.page(params[:page]).per(5)
		else
			@blogs = Blog.published.all.page(params[:page]).per(5)
		end	
	end

	def show
		if logged_in?(:admin) || @blog.published?
			@blog = Blog.friendly.find(params[:id])
		else
			redirect_to blogs_path, notice: "You are not authorized to view this page."
		end
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
		respond_to do |format|
			if @blog.update(blog_params)
				format.html { redirect_to @blog, notice: "Blog was successfully updated!"}
			else
				format.html { redirect_to edit_blog_path }
			end
		end
	end

	def destroy
		@blog.destroy
		respond_to do |format|
			format.html { redirect_to @blog, notice: "Blog successfully deleted!"}
		end
	end

	def toggle_status
		if @blog.draft?
			@blog.published!
		else @blog.published?
			@blog.draft!
		end
		redirect_to blogs_url, notice: "Blog status was updated successfully"
	end

	private

	def blog_params
		params.require(:blog).permit(:catagory, :title, :description, :body, :status)
	end

	def set_blog
		@blog = Blog.friendly.find(params[:id])
	end
end
