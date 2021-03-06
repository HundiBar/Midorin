class PotsController < ApplicationController
  before_action :set_pot, only: [:show, :edit, :update, :destroy, :water, :picture]

  def index
    @pots = policy_scope(Pot).order(created_at: :desc)
  end

  def show; end

  def water
    @pot.update(pot_params)
    redirect_to pot_path
  end

  def create
    @pot = Pot.new(pot_params)
    @plant = Plant.find(params[:pot][:plant_id])
    @pot.plant = @plant
    @pot.user = current_user
    @pot.last_watered = Time.now
    authorize @pot
    @pot.save
    redirect_to pots_path
  end

  def edit
  end

  def update
    @pot.update(pot_params)
    @pot.photos.attach(photos_params["photos"]) if photos_params["photos"]
    if pot_params[:last_watered].present?
      redirect_back fallback_location: pot_path(@pot)
    else
      redirect_to pot_path(@pot)
    end
  end

  def destroy
    @pot.destroy
    redirect_to pots_path
  end

  private

  def set_pot
    @pot = Pot.find(params[:id])
    authorize @pot
  end

  def pot_params
    params.require(:pot).permit(:plant_id, :nickname, :birthday, :last_watered)
  end

  def photos_params
    params.require(:pot).permit(photos: [])
  end
end
