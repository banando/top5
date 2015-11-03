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
  def edit

    @list = List.find(params[:id])
    render 'new'
  end

  def update
    list = List.find(params[:id])
    if list.update(list_params)
      flash[:notice]= "Changes have been saved"
      redirect_to root_path
    else
      render 'edit'
    end

  end

  private
  def list_params
    params.require(:list).permit(:topic, :first, :second, :third, :fourth, :fifth)

  end

end
