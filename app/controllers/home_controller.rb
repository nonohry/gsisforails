class HomeController < ApplicationController
  before_filter :confirm_admin
  
  def index
  end

end
