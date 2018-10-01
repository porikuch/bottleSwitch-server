class BottlesController < ApplicationController
  def create
    created_user_id = (User.find_by(name: params[:name])).id.to_i
    Bottle.create(title: params[:title],
                  body: params[:body],
                  created_user_id: created_user_id
                 )
    render json: {status: true}
  end
end
