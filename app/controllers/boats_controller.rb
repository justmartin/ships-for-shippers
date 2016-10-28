class BoatsController < ApplicationController

  def index
  end

  def create
    @boat = Boat.new(boat_params)

    if @boat.save
      flash[:notice] = "Your Boat Was Created!"
      redirect_to "/"
    else
      flash[:alert] = "There Was An Error Creating Your Boat."
      flash[:error] = @boat.errors.full_messages
      redirect_to "/"
    end
  end

  private # ========================================================

  def boat_params
    params.require(:boat).permit(:name, :container_capacity, :location, :user_id)
  end
  
end
