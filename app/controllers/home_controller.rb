class HomeController < ApplicationController

  def index
    @boats = Boat.all
    @jobs = Job.all
  end

end
