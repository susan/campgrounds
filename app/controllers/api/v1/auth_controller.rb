class Api::V1::AuthController < ApplicationController
require "byebug"

  def create
      @user = User.find_by(user_name: login_user_params[:user_name])
      if @user && @user.authenticate(login_user_params[:password])
        token = encode_token({ user_id: @user.id })
        render json: { user: @user, jwt: token }, status: :accepted
      else
        render json: { message: 'Invalid username or password' }, status: :unauthorized
      end
    end

  def show
    @user = curr_user
    #renamed from current_user because active model
    if @user
        render json: { user: @user}, status: :accepted
      else
        render json: { message: 'Invalid username or password' }, status: :unauthorized
      end
    end

    private

   def login_user_params
   	 params.require(:user).permit(:user_name, :email, :password)
   end


end
