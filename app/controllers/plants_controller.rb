class PlantsController < ApplicationController
  before_action :set_plant, only: [:show]

  def show; end

  private

  def set_plant
    @plant = Plant.find(params[:id])
  end
end
