class WelcomeController < ApplicationController
  def index
    @health_issues = HealthIssue.all
  end

end
