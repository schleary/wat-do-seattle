class HomeController < ApplicationController
  def index
    puts "HOME"
    @user = User.new
  end

  def create
  end
end
