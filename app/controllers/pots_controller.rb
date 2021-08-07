class PotsController < ApplicationController
  def index
    @pots = Pot.all.order(created_at: :desc)
  end
end
