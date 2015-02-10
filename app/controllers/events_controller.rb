class EventsController < ApplicationController
  def create
    @event = Event.new(events_params)
    if @event.save
      redirect_to event_show_path(@event)
    else
      flash[:error] = "There was a problem creating this event"
    end
  end

  def update
  end

  def index
    @events = Event.all.where(:user_id => current_user)
    # .where(:user_id => @current_user.id)
  end

  def show
    @event = Event.find(params[:id])
  end

  def edit
    @event = Event.find(params[:id])
  end

  def update
    @event = Event.find(params[:id])
    if @event.update(events_params)
      redirect_to @event
    else
      render :edit
    end
  end

  def destroy
    @event = Event.find(params[:id])
    @event.destroy
    redirect_to events_path
  end

  private

  def events_params
    params.require(:event).permit(:date_time_start, :date_time_end, :activity_id, :user_id)
  end

end
