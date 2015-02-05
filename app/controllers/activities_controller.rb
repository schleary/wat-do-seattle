class ActivitiesController < ApplicationController

  def new
    @activity = Activity.new
  end

  def index
    @activities = Activity.all
  end

  def create
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
    @activities = Activity.where( max_price: 0..@query["activity"]["max_price"].to_i,
                                  min_activity_level: @query["activity"]["min_activity_level"].to_i..@query["activity"]["max_activity_level"].to_i,
                                  # You want an 'OR' here
                                  # max_activity_level: @query["activity"]["min_activity_level"].to_i..@query["activity"]["max_activity_level"].to_i
                                  )
    @event = Event.new
  end

  def show
    @activity = Activity.find(params[:id])
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
      :image
    )
  end

end
