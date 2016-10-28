class BoatsJobsController < ApplicationController

  def index
  end

  def create
    boat_job = BoatsJob.find_or_initialize_by(boat_id: params[:boat_id],
                                              job_id: params[:job_id])
    if boat_job.new_record?
      boat_job.save
      flash[:notice] = "Assigned Successfully!"
      redirect_to "/"
    else
      flash[:alert] = "That Assignment Already Exists."
      redirect_to "/"
    end
  end

end
