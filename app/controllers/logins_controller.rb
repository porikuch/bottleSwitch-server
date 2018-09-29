class LoginsController < ApplicationController
  def create
    user = User.find_by(name: params[:name])
    if user.nil? or user.password != Digest::SHA256.hexdigest(params[:password]) then
      render json: {status: 'false'}
    else
      render json: {status: 'true', id: user.id, name: user.name, nickname: user.nickname}
    end
  end

end
