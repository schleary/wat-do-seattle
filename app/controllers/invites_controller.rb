class InvitesController < ApplicationController

  def index

  end

  def show

  end

  def createInvites
    puts "*************************** Seriously"

    puts params[:id]
    @event = Event.find(params[:id])
    @user = current_user

    #@event.invites

    new_invites = []
    params["event"]["invites"].keys.each do |key|
      puts params["event"]["invites"][key]
      new_invite = Invite.new
      new_invite.guest_id = params["event"]["invites"][key].to_i
      new_invite.user_id = @user.id
      new_invite.event_id = @event.id
      new_invite.save

    end

    # redirect to event show page for @event
  end

  def create

  end

  def update

  end

  def destroy

  end
end
