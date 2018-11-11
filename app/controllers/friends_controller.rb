class FriendsController < ApplicationController
  def create
  end

  def index
    find_user_id = params[:id].to_i
    friends_index = Friend.where(user_id: find_user_id).select(:friend_id)

    render json: {friends: friends_index}
  end
end
