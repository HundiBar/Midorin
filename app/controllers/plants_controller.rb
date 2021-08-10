class PlantsController < ApplicationController
  skip_before_action :authenticate_user!, only: :index
  before_action :set_plant, only: [:show]

  def index
    if params[:query].present?
      @query = params[:query]
      @plants = policy_scope(Plant).search_by_name(params[:query]).order(created_at: :desc)
    else
      @plants = policy_scope(Plant).order(name: :asc)
    end
  end

  def show
    @pot = Pot.new
  end

  private

  def set_plant
    @plant = Plant.find(params[:id])
    authorize @plant
  end

end
