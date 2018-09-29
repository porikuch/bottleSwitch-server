class UsersController < ApplicationController
  def create
    if User.find_by(name: params[:name]) != nil then
      render json: {status: 'ユーザ名が既に使用されています'}
    else
      User.create(name: params[:name],
                  password: Digest::SHA256.hexdigest(params[:password]),
                  nickname: params[:nickname]
                 )
    end
  end
end
