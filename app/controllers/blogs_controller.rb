class BlogsController < ApplicationController
  def index
  	@blogs = Blog.all
  end

  def new
  	@blog = Blog.new
  end

  def create
  	blog = Blog.new(blog_params)
  	blog.user_id = session[:user_id]
  	if blog.save
  		redirect_to "/"
  	else
  		render "/blogs/new"
  	end
  end














	private
def blog_params
	params.require(:blog).permit(:title, :content, :user_id, :sport)
end

end

