class PotsController < ApplicationController
  def index
    @pots = Pot.all.order(created_at: :desc)
  end

  def show
    @pot = Pot.find(params[:id])
  end

  def destroy
    @pot = Pot.find(params[:id])
    @pot.destroy
    redirect_to plant_path
  end
end
