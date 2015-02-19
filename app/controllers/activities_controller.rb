class ActivitiesController < ApplicationController

  http_basic_authenticate_with name: ENV["API_KEY"], password: ENV["API_SECRET"], only: [:init_activities]

  def new
    @activity = Activity.new
  end

  def index
    @activities = Activity.all
    @event = Event.new
    @invite = Invite.new
    # should be friends only
    @users = User.all
  end

  def create
    puts params.inspect
    @activity = Activity.new(activities_params)
    if @activity.save
      flash[:notice] = "Thank you for the activity suggestion!"
      redirect_to activity_show_path(@activity.id)
    else
      render 'new'
    end
  end

  def query
    @activity = Activity.new
  end

  def results
    @query = params
    @activities = Activity.where("max_price in (?) AND (min_activity_level in (?) OR max_activity_level in (?))",
                                  0..@query["activity"]["max_price"].to_i,
                                  @query["activity"]["min_activity_level"].to_i..@query["activity"]["max_activity_level"].to_i,
                                  @query["activity"]["min_activity_level"].to_i..@query["activity"]["max_activity_level"].to_i)
    @event = Event.new
  end

  def show
    @activity = Activity.find(params[:id])
    @event = Event.new
  end

  def edit
    @activity = Activity.find(params[:id])
  end

  def update
    @activity = Activity.find(params[:id])
    if @activity.update(activities_params)
      redirect_to activity_show_path
    else
      render 'edit'
    end
  end

  def destroy
  end

  def init_activities
    Script.quick_create
  end

  private

  def activities_params
    params.require(:activity).permit(
      :name,
      :min_price,
      :max_price,
      :url,
      :description,
      :min_activity_level,
      :max_activity_level,
      :image,

    )
  end

end
