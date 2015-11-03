class UsersController < ApplicationController
  before_action :authenticate, only: [:show, :edit, :update]
  before_action :authorize, only: [:show, :edit, :update]


  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      flash[:notice] = "you have Created a new User! now you can log in."
      redirect_to root_path
    else
      render 'new'
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :user_name, :password, :password_confirmation)
  end
  def authenticate
      redirect_to new_session_path, alert: 'You must be logged in to continue!' if current_user.nil?
  end

  def authorize
    @user = User.find(params[:id])
    redirect_to root_path if @user != current_user
  end
end
