class FriendsController < ApplicationController
  def create
    find_bottle_id = params[:bottle_id].to_i 
    request_user_id = params[:user_id].to_i
    requested_user_id = (Bottle.find(find_bottle_id))["created_user_id"].to_i
    have_user_id = (HaveBottle.find_by!(bottle_id: find_bottle_id))["user_id"].to_i

    if have_user_id == request_user_id
      Friend.create(user_id: request_user_id,
                    friend_id: requested_user_id
                   )
      Friend.create(user_id: requested_user_id,
                    friend_id: request_user_id
                   )
      render json: {status: true}
    else
      render json: {status: false, have_user_id: have_user_id, id: requested_user_id}
    end
  end

  def index
    find_user_id = params[:id].to_i
    friends_index = Friend.where(user_id: find_user_id).select(:friend_id)

    render json: {friends: friends_index}
  end
end
