class PotsController < ApplicationController
  skip_before_action :authenticate_user!, only: :index
  before_action :set_plant, only: [:show]

  def index
    @pots = policy_scope(Pot).order(created_at: :desc)
  end

  def show
    @pot = Pot.find(params[:id])
  end

  private

  def set_plant
    @plant = Plant.find(params[:id])
    authorize @plant
  end
  
  def create
    @pot = Pot.new(pot_params)
    @plant = Plant.find(pot_params[:plant_id])
    @pot.plant = @plant
    @pot.user = current_user
    @pot.save
    redirect_to pots_path
  end
  
  def destroy
    @pot = Pot.find(params[:id])
    @pot.destroy
    redirect_to plant_path
  end

  private

  def pot_params
    params.require(:pot).permit(:plant_id)
  end

end
