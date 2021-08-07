class PlantsController < ApplicationController
  before_action :set_plant, only: [:show]

  def index
    if params[:query].present?
      @query = params[:query]
      @plants = Plant.search_by_name(params[:query])
    else
      @plants = Plant.all
    end
  end

  def show
    @pot = Pot.new
  end

  private

  def set_plant
    @plant = Plant.find(params[:id])
  end
end
