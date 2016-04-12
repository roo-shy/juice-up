class JuicesController < ApplicationController
    def index
      @juices = Juice.all
      health_issue_ids_list = []

      params.each do |k,v|
    if (k.include? "juice_id-")
      len = "juice_id-".length
      health_issue_ids_list << k.slice(len, k.length).to_i
    end
  end

    if health_issue_ids_list.length > 0
      @remedies = Remedy.find_by(id: health_issue_ids_list)
      # @juices = Juice.find_by(id: list of juice ids from @remedies)
    else
      @juices = Juice.all
    end
  end

    def juice_params
    params.require(:juice).permit(:photo)
    end

    def show
      @juice = Juice.find_by id: params[:id]
    end

# @juices = HealthIssue.where("name LIKE ?", "%#{params[:search]}%").map(&:juice_id)
# @health_issues = HealthIssue.joins(:juices).where("juice.name like '%?%'",params[:search])

    def juice_params
    params.require(:juice).permit(:photo)
    end
end
