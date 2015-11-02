class ListsController < ApplicationController
  def index
    @lists = List.all

  end
  def new
    @list = List.new

  end
  def create
    list = List.new params[:list][:topic]
    list.user = current_user
    if @user.save
      flash[:notice] = "You have succefully added a new Top 5!"
      redirect_to root_path
    else
      render 'new'
    end

  end
  def show


  end

end
