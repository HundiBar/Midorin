class PotsController < ApplicationController
  skip_before_action :authenticate_user!, only: :index
  before_action :set_pot, only: [:show,:edit, :update, :destroy, ]

  def index
    @pots = policy_scope(Pot).order(created_at: :desc)
  end

  def show; end

  def create
    @pot = Pot.new(pot_params)
    @plant = Plant.find(params[:pot][:plant_id])
    @pot.plant = @plant
    @pot.user = current_user
    @pot.last_watered = Time.now
    @pot.nickname = "Nickname" if params[:query].nil
    authorize @pot
    @pot.save
    redirect_to pots_path
  end

  def edit
  end

  def update
      @pot.update(pot_params)
      redirect_to pot_path(@pot)
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
    params.require(:pot).permit(:plant_id)
  end

end
