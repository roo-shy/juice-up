class HealthIssuesController < ApplicationController

  def index
    @health_issues = HealthIssue.all
  end

  def health_issue_params
  params.require(:health_issue).permit(:photo)
  end
end
