class FriendshipsController < ApplicationController
  def create
    puts params.inspect
    @friendship = current_user.friendships.build(:friend_id => params[:friend_id])
    if @friendship.save
      flash[:notice] = "Friend Added."
      redirect_to users_path
    else
      flash[:error] = "Unable to add friend."
      redirect_to users_path
    end
  end

  def index
    @user = current_user
    # @friendships = Friendship.all.where(:user_id => current_user.id)
  end

  def show
    @user = User.find(params[:id])
  end

  def destroy
    @friendship = current_user.friendships.find(params[:id])
    @friendship.destroy
    flash[:notice] = "Friend Removed."
    redirect_to users_path
  end


end
