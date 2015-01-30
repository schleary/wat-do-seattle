class ActivitiesController < ApplicationController

  def new
    @activity = Activity.new
  end

  def create
    @activity = Activity.new(activities_params)
    puts activities_params
    if @activity.save
      redirect_to root_path
    else
      render 'new'
    end
  end

  def show
    @activity = Activity.find(params[:id])
  end

  def edit
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
    params.require(:activity).permit(:name, :price, :url, :description, :min_activity_level, :max_activity_level)
  end

end
