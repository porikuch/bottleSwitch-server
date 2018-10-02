class BottlesController < ApplicationController
  def create
    created_user_id = (User.find_by(name: params[:name])).id.to_i
    Bottle.create(title: params[:title],
                  body: params[:body],
                  created_user_id: created_user_id
                 )
    render json: {status: true}
  end

  def index
    find_user_id = (User.find_by(name: params[:name])).id.to_i
    bottle_index = Bottle.where(created_user_id: find_user_id)

    render json: {bottles: bottle_index}
  end
end
