class BottlesController < ApplicationController
  def create
    id = User.find_by(id: params[name]).id
    Bottle.create(title: params[:title],
                  body: params[:body],
                  created_user_id: id
                 )
    render json: {status: true}
  end
end
