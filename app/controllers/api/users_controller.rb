class Api::UsersController < ApplicationController
  def index
    render 'index.json.jb'
  end
  def create
    @user = User.new(
      first_name: params[:first_name],
      last_name: params[:last_name],
      email: params[:email],
    )
    if @user.save
      render 'show.json.jb' 
    else
      render json: {message: @user.errors.full_messages}
    end
 
  end
end
