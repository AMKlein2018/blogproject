class UsersController < ApplicationController
  def show
  	@users = User.all

  end
end







private

	def user_params
		params.require(:blog).permit(:title, :content, :user_id, :sport)
	end

end