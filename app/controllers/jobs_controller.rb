class JobsController < ApplicationController

  def index
  end

  def create
    job = Job.new(job_params)
    if job.save
      flash[:notice] = "Your Job Was Created!"
      redirect_to "/"
    else
      flash[:alert] = "There Was An Error Creating Your Job."
      redirect_to "/"
    end
  end

  private # ========================================================

  def job_params
    params.require(:job).permit(:description, :origin, :destination, :cost, :containers_needed, :title, :date)
  end

end
