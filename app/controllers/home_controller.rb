class HomeController < ApplicationController
  def index
    user_id = session[:user_id]
    if user_id.present?
    @current_user = User.find_by id: user_id
  end
 end
end
