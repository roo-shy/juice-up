class HealthIssuesController < ApplicationController

  def index
    @health_issues = HealthIssue.all
    @juices = Juice.new
  end

  def health_issue_params
  params.require(:health_issue).permit(:photo)
  end

  def checked
    HealthIssue.update_all(["checked_at=?", Time.now], :id => params[:health_ids])
    params[:health_issues_ids]
    #Mark All Health Issues that are selected
    redirect_to health_issues_path
  end

end
