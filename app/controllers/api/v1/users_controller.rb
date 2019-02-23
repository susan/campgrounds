class Api::V1::UsersController < ApplicationController


  def create
    @user = User.create(user_params)
    if @user.valid?
      token = JWT.encode({user_id: @user.id, 'SECRET'})
      render json (user = @user, jwt: token)
    else
      render json {error: "WRONG"}, status: 422
    end
  end

  private
  def user_params
  	 params.require(:user).permit( :user_name, :email, :password #nopassowrd yet but put it in to let user edit)

end
