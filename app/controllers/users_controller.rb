class UsersController < ApplicationController
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
end
