class JobsController < ApplicationController

  def index
  end

  def create
    @job = Job.new(job_params)

    if @job.save
      flash[:notice] = "Your Job Was Created!"
      redirect_to "/"
    else
      flash[:alert] = "There Was An Error Creating Your Job."
      flash[:job_error] = @job.errors.full_messages
      redirect_to "/"
    end
  end

  def destroy
    @job = Job.find(params["job"]["id"])

    if BoatsJob.no_job_assignment_for?(@job.id) && @job.destroy
      flash[:notice] = "Job Deleted Successfully!"
    else
      flash[:alert] = "This Job Has An Assignment... Aborting!"
    end

    redirect_to "/"
  end

  private # ========================================================

  def job_params
    params.require(:job).permit(:description, :origin, :destination, :cost, :containers_needed, :title, :date)
  end

end
