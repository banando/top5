class ListsController < ApplicationController
  def index
    @lists = List.all

  end
  def new
    @list = List.new

  end
  def create
    list = List.new(list_params)
    list.user = current_user
    if list.save
      flash[:notice] = "You have succefully added a new Top 5!"
      redirect_to root_path
    else
      render 'new'
    end

  end
  def show
    @list = List.find(params[:id])

  end
  def destroy
    @list = List.find(params[:id])
    @list.destroy
    redirect_to root_path, notice: 'List deleted'

  end

  private
  def list_params
    params.require(:list).permit(:topic)

  end

end
