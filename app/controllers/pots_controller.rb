class PotsController < ApplicationController
  def index
    @pots = Pot.all.order(created_at: :desc)
  end
  def show
    @pot = Pot.find(params[:id])
  end

  def create
    @pot = Pot.new(pot_params)
    @plant = Plant.find(pot_params[:plant_id])
    @pot.plant = @plant
    @pot.user = current_user
    @pot.save
    redirect_to pots_path
  end

  private

  def pot_params
    params.require(:pot).permit(:plant_id)
  end

end
