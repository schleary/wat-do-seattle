class EventsController < ApplicationController
  def create
    @event = Event.new(events_params)
    if @event.save
      flash[:notice] = "You have successfully created a new event!"
      redirect_to event_show_path(@event)
    else
      flash[:error] = "There was a problem creating this event"
    end
  end

  def update
  end

  def index
    @invites = Invite.where(:guest_id => current_user)

    # @invites.first.event_id should be the whole array
    # @events = Event.where("(user_id in (?) OR id in (?))", current_user, @invites.first.event_id)
    @events = Event.where(:user_id => current_user)
  end

  def show
    @event = Event.find(params[:id])
    @user = current_user
    @invite = Invite.find_by(:guest_id => current_user.id, :event_id => @event.id)
    @invites = []
    @going_invites = Invite.where(:event_id => @event.id, :status => "Going")
    @not_going_invites = Invite.where(:event_id => @event.id, :status => "Not Going")
    @maybe_invites = Invite.where(:event_id => @event.id, :status => "Maybe")
    @not_yet_invites = Invite.where(:event_id => @event.id, :status => "Not Yet Responded")
    puts @not_yet_invites.inspect
    @invites << @going_invites
    @invites << @not_going_invites
    @invites << @maybe_invites
    @invites << @not_yet_invites
  end

  def edit
    @event = Event.find(params[:id])
    @activity = Activity.find_by(:id => @event.activity_id)
  end

  def update
    @event = Event.find(params[:id])
    if @event.update(events_params)
      redirect_to event_show_path@event
    else
      render :edit
    end
  end

  def destroy
    @event = Event.find(params[:id])
    @event.destroy
    @invites = Invite.where(:event_id => @event.id)
    @invites.each do |invite|
      invite.destroy
    end
    @notifications = Notification.where(:event_id => @event.id)
    @notifications.each do |notification|
      notification.destroy
    end
    redirect_to events_path
  end

  private

  def events_params
    params.require(:event).permit(:date_time_start, :date_time_end, :activity_id, :user_id, :description)
  end

end
