class JuicesController < ApplicationController
  def index
    @juices = Juice.all
  end

  def juice_params
  params.require(:juice).permit(:photo)
  end

  def show
  end
end
