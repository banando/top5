class ListsController < applicationController
  def index
    @lists = List.all

  end

end
