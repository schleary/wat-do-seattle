class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def show
  end

  def save
  end

  def create
    @user = User.new(users_params)
    if @user.save
      redirect_to users_show_path(@user)
    else
      render 'new'
    end
  end

  def show
    @user = User.find(params[:id])
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def users_params
    params.require(:user).permit(:name, :email)
  end

end
