class EventsController < ApplicationController
  def create
    @event = Event.new(events_params)
    if @event.save
      redirect_to event_show_path
    else
      flash[:error] = "There was a problem creating this event"
    end
  end

  def update
  end

  def index
    @events = Event.all.where(:user_id => @current_user.id)
  end

  def show
    @event = Event.find(params[:id])
  end
  
  def destroy
  end

  private

  def events_params
    params.require(:event).permit(:date_time_start, :date_time_end, :image_url, :activity_id, :user_id)
  end

end
