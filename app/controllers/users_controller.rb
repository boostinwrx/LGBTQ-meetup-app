class UsersController < ApplicationController
  skip_before_action :require_login, only: [:create]

  def index
    @users = User.all
    render json: @users

  end

  def create
    @user = User.create(user_params)

    if @user.valid?

      payload = {user_id: @user.id}
      token = encode_token(payload)
      puts token
      render json: {user: @user, jwt: token}
    else
      render json: {errors: user.errors.full_messages}, status: :not_acceptable
    end
  end

  def show

    @user = User.find(params[:id])
    render json: @user
    #byebug
    @user_meetups = @user.meetups
  end

  def update
    @user = User.find(params[:id])
    render json: @user
  end

  private
  def user_params
    params.require(:user).permit(:id, :username, :password, :name,:picture,:bio, :pronouns, :user_meetups)
  end
end
