class JuicesController < ApplicationController
  def index
    @juices = Juice.all
    if params[:id]
      @juices = Juice.search(params[:id])
    # else
    #   @juices = Juice.all
    end
  end

  def juice_params
  params.require(:juice).permit(:photo)
  end

  def show
    @juice = Juice.find_by id: params[:id]
  end
end
