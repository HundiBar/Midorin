class PlantsController < ApplicationController

  def index
    if params[:query].present?
      @query = params[:query]
      @plants = Plant.search_by_name(params[:query])
    else
      @plants = Plant.all
    end

  end
end
