class HomeController < ApplicationController
  def index
    @user = User.new
    @activity = Activity.new
  end

  def create
  end
end
