class Api::HealthIssuesController < ApplicationController

  # def create
  #   @health_issue = HealthIssue.new params.require(:health_issue).permit(:name)
  #   if @health_issue.save
  #     render status: 201, json: @health_issue
  #   else
  #     render status: 422, json: @health_issue.errors
  #   end
  # end

  def index
    @health_issues = HealthIssue.all
  end
end
