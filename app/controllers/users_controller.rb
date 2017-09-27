class UsersController < ApplicationController
  def show
  	@user = User.find(params[:id])
  end

  def follow
    user = User.find(params[:following_id])
    Relationship.create(follower_id: current_user.id, following_id: params[:following_id])
    redirect_to user, notice: 'You are now following this user.'
  end
end
