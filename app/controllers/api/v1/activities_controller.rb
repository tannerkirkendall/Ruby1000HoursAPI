class Api::V1::ActivitiesController < ApplicationController
  def index
    activities = Activity.all
    render json: activities, status: 200
  end

  def create
    t = Time.now
    activity = Activity.new(
      starttime: t,
      endtime: t + 10,
      description: "walk to park"
    )
    if activity.save
      render json: activity, status: 200
    else
      render json: { error: "Error saving activity" }
    end
  end

  def show
    activity = Activity.find_by(id: params[:id])
    if activity
      render json: activity, status: 200
    else
      render json: { error: "No activity found" }
    end
  end
end
