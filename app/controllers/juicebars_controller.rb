class JuicebarsController < ApplicationController

  def index
    @juicebars = Juicebar.all
  end

end
