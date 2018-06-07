class CommentsController < ApplicationController
	# def index
 #    	@comments = Comment.all
 #  		end
 #  	def new
 #    	@comment = Comment.new
 #  		end

	def create
		user = current_user
		comment.user_id = user.id
		@blog = Blog.find(params[:blog_id])
		@comment = @blog.comments.build(params[:comment])
		if comment.save
			redirect_to "/blogs/#{params[:blog_id]}"
		else
			render "/blogs/#{params[:blog_id]}"
		end
	end


	def show
		@comment = Comment.find(params[:id])

	end


	# def destroy

	# end




	private
	
	def blog_params
		params.require(:comment).permit(:content, :user_id, :blog_id)
	end



end
