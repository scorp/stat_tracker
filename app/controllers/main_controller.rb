class MainController < ApplicationController
  before_filter :login_required
  
  def index
    @stats = current_user.statistics.find(:all)
  end
  
end