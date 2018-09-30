class BottlesController < ApplicationController
  def create
    Bottle.create(title: params[:title],
                  body: params[:body],
                  created_user_id: params[:id]
                 )
    render json: {status: true}
  end
end
