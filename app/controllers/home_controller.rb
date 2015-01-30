class HomeController < ApplicationController
  def index
    @user = User.new
  end

  def create
  end
end
