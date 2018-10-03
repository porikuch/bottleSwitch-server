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

    # ここから
    bottle_index = Bottle.joins(:have_bottles).where(have_bottles: {user_id: find_user_id}).select(:title, :id)
    #bottle_index = Bottle.where(created_user_id: find_user_id)
    #bottles = []
    #bottle_titles = []
    #bottle_ids = []
    #nickname = User.find(1).nickname

    #bottle_index.each do |bottle|
    #  bottles << (bottle[:id])
      #bottle_ids << (bottle[:id])
      #bottle_titles << (bottle[:title])
    #end

    render json: {bottles: bottle_index}
    #render json: {title: bottle_titles, id: bottle_ids, nickname: nickname}
    #render json: {bottles: bottle_index}
  end
end
