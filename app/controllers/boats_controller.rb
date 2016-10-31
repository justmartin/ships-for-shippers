class BoatsController < ApplicationController

  def index
  end

  def create
    @boat = Boat.new(boat_params)

    if @boat.save
      flash[:notice] = "Your Boat Was Created!"
    else
      flash[:alert] = "There Was An Error Creating Your Boat."
      flash[:boat_error] = @boat.errors.full_messages
    end
    
    redirect_to "/"
  end

  def destroy
    @boat = Boat.find(params["boat"]["id"])

    if BoatsJob.no_assignment_for?(@boat.id) && @boat.destroy
      flash[:notice] = "Boat Deleted Successfully!"
    else
      flash[:alert] = "This boat has an assignment... Aborting!"
    end

    redirect_to "/"
  end

  private # ========================================================

  def boat_params
    params.require(:boat).permit(:name, :container_capacity, :location, :user_id, :avatar)
  end
  
end
