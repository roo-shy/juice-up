class JuicesController < ApplicationController
  def index
    @juices = Juice.all
  end

  def show
  end
end
