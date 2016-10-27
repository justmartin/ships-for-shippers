class HomeController < ApplicationController

  def index
    @boats = Boat.all
    @jobs = Job.all
    @assignments = BoatsJob.all
  end

end
