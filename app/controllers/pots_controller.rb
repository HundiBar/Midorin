class PotsController < ApplicationController
  def index
    @pots = Pot.all.order(created_at: :desc)
  end
  def show
    @pot = Pot.find(params[:id])
  end

  def create
    @pot = Pot.new(pot_params)
    @plant = Plant.find(params[:plant_id])
    @pot.plant = @plant
    @pot.save
    redirect_to pots_path
  end

  private

  def pot_params
    params.require(:pot)
  end

end
