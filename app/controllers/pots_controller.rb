class PotsController < ApplicationController
    def show
      @pot = Pot.find(params[:id])
    end
end
