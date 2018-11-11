class FriendsController < ApplicationController
  def create
  end

  def index
    find_user_id = params[:id].to_i
    frineds_index = Frined.where(user_id: find_user_id).select(:frined_id)

    render json: {friends: frineds_index}
  end
end
