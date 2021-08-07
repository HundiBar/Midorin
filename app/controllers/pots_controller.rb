class PotsController < ApplicationController
  skip_before_action :authenticate_user!, only: :index
  before_action :set_pot, only: [:show, :destroy]

  def index
    @pots = policy_scope(Pot).order(created_at: :desc)
  end

  def show; end
  
  def create
    @plant = Plant.find(params[:id])
    @pot = Pot.new(pot_params)
    @pot.plant = @plant
    @pot.user = current_user
    authorize @pot
    @pot.save
    redirect_to pots_path
  end
  
  def destroy
    @pot.destroy
    redirect_to plant_path
  end

  private

  def set_pot
    @pot = Pot.find(params[:id])
    authorize @pot
  end
    
  def pot_params
  params.require(:pot).permit(:plant_id)
  end
  
end
