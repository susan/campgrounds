class Api::V1::UsersController < ApplicationController
before_action :find_user, only: [:show, :create]

	def index
    @users = User.all
    render json: @users, status: :ok
  end

  def show
    find_user
       render json: @user, status: :ok
   end

  private
  def user_params
  	 params.require(:user).permit( :user_name, :email #nopassowrd yet but put it in to let user edit)


  def find_user
    @user = User.find(params[:id])
  end

end
