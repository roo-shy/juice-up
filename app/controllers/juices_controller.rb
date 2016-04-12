class JuicesController < ApplicationController
  def index
    # @juices = Juice.all
    # puts "-^-"*100
    # print params
    juice_id_list = []

    params.each do |k,v|
      if (k.include? "juice_id-")
        len = "juice_id-".length
        juice_id_list << k.slice(len, k.length).to_i
      end
    end

    if juice_id_list.length > 0
      # @juices = Juice.all.first
      # @juices = Juice.search(params[:id])
      @juices = Juice.find(juice_id_list)
      # puts "----+++----"*33
      print @juices
    else
      @juices = Juice.all
    end

  end

  def juice_params
  params.require(:juice).permit(:photo)
  end

  def show
    @juice = Juice.find_by id:params[:id]
  end
end
