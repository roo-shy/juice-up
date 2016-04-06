class HealthIssuesController < ApplicationController

  def index
    @health_issues = HealthIssue.all
  end
end
