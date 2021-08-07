class PotsController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def index
    @pots = policy_scope(Pot).order(created_at: :desc)
  end
end
