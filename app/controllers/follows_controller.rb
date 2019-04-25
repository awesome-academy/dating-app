class FollowsController < ApplicationController
  before_action :authenticate_user!
  before_action :load_user, only: %i(follow unfollow)

  def follow
    current_user.follow(@user)
    @follow = Follow.find_by(follower: current_user, followable: @user)
    respond_to :js
  end

  def unfollow
    current_user.stop_following(@user)
    respond_to :js
  end

  private

  def load_user
    @info = InformationUser.find_by id: params[:id]
    @user = User.find_by(id: @info.user_id)
    return if @user && @info
    flash[:error] = "user_not_found"
    redirect_to root_path
  end
end
