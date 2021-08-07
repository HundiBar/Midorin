class PotsController < ApplicationController
  skip_before_action :authenticate_user!, only: :index
  before_action :set_plant, only: [:show]

  def index
    @pots = policy_scope(Pot).order(created_at: :desc)
  end

  def show; end

  private

  def set_plant
    @plant = Plant.find(params[:id])
    authorize @plant
  end
end
