class InvitesController < ApplicationController

  def index

  end

  def show

  end

  def createInvites
    @event = Event.find(params[:id])
    @user = current_user
    new_invites = []
    params["event"]["invites"].keys.each do |key|
      puts params["event"]["invites"][key]
      new_invite = Invite.new
      new_invite.guest_id = params["event"]["invites"][key].to_i
      new_invite.user_id = @user.id
      new_invite.event_id = @event.id
      if new_invite.save
        puts 'EVENT'
        puts @event.id
        notification = Notification.new(:user_id => new_invite.guest_id, :description => "#{@user.name} has invited you to an #{@event.activity.name}!", :event_id => @event.id)
        notification.save
        puts notification.inspect
        puts "SAVEd"
        puts notification.inspect
      end

    end

    redirect_to event_show_path(@event)
  end

  def create

  end

  def update
    @invite = Invite.find(params[:id])
    if @invite.update(invite_params)
      redirect_to event_show_path(@invite.event)
    end
  end

  # def invite_going
  #   puts "GETTING TEHRE"
  #   @invite = Invite.find(params[:id])
  #   @invite.status = "Going"
  #   if @invite.update(invite_params)
  #     redirect_to event_show_path(@invite.event)
  #   end
  # end
  #
  # def invite_maybe
  #   @invite = Invite.find(params[:id])
  #   @invite.status = "Maybe"
  #   if @invite.update(invite_params)
  #     redirect_to event_show_path(@invite.event)
  #   end
  # end
  #
  # def invite_not_going
  #   @invite = Invite.find(params[:id])
  #   @invite.status = "Not Going"
  #   if @invite.update(invite_params)
  #     redirect_to event_show_path(@invite.event)
  #   end
  # end

  def destroy

  end

  private

  def invite_params
    params.require(:invite).permit(:guest_id, :user_id, :event_id, :status)
  end

end
