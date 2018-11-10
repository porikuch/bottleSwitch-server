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
    bottle_index = (Bottle.joins(:user)).joins(:have_bottles).where(have_bottles: {user_id: find_user_id}).select(:id, :title, :nickname, :created_user_id)

    render json: {bottles: bottle_index}
  end

  def show
    show = Bottle.select(:title, :body).find_by(id: params[:id])
    render json: {bottle: show}
  end
end
