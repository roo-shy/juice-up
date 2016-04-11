class JuicesController < ApplicationController
  def index
    @juices = Juice.all
  end

  def juice_params
  params.require(:juice).permit(:photo)
  end

  def show
    @juice = Juice.find_by id: params[:id]
  end
end
