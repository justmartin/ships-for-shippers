class HomeController < ApplicationController

  def index
    @boats = Boat.all
    @jobs = Job.all
    @assignments = BoatsJob.all

    @locations = [["Seattle, WA", "Seattle, WA"], ["Juneau, AK", "Juneau, AK"], ["Portland, OR", "Portland, OR"], 
    ["Los Angeles, CA", "Los Angeles, CA"], ["Honolulu, HI", "Honolulu, HI"]]
  end

end
