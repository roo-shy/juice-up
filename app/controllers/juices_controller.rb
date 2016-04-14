class JuicesController < ApplicationController
  before_action :authenticate_user!
    def index
      # @juices = Juice.all
      health_issue_ids_list = []

      params.each do |k,v|
    if (k.include? "juice_id-")
      len = "juice_id-".length
      health_issue_ids_list << k.slice(len, k.length).to_i
    end
  end

    if health_issue_ids_list.length > 0
      # @remedies = Remedy.find_by(id: health_issue_ids_list)
      # @juices = Juice.where(id: @remedies)


      # # I know health issue with id 10
      # select * from juices
      #   inner join remedies on remedies.juice_id = juices.id
      #   inner join health_issues on health_issues.id = remedies.health_issue_id
      #   where health_issues.id = 10

      @juices = Juice.joins(:remedies => :health_issue).where("health_issues.id IN (?) ", health_issue_ids_list).uniq
    else
      @juices = Juice.all
    end
  end

    def juice_params
    params.require(:juice).permit(:photo)
    end

    def show
      @juice = Juice.find_by id: params[:id]
      @juicebars = Juicebar.all
    end

    def juice_params
    params.require(:juice).permit(:photo)
    end
end
