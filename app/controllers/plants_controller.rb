require 'base64'
require 'uri'
require 'net/http'
require 'json'
require 'open-uri'

require_relative "../../test_hash.rb"
# require_relative "api_call.rb"


class PlantsController < ApplicationController
  before_action :set_plant, only: [:show]

  def index
    # COMMupload img to cloudinary to create a url that can be called
    @plant = Plant.new
    @api_scan = params.dig(:plant, :image).present?

    if params[:query].blank? && params.dig(:plant, :image).nil?
      @plants = policy_scope(Plant).order(created_at: :desc)

    elsif params[:query].present?
      @query = params[:query]
      @plants = policy_scope(Plant).search_by_name(params[:query]).order(created_at: :desc)

    elsif @api_scan
      ApiCall
      # plant_search_name = TestHash["suggestions"].first["plant_name"]
      @plants = policy_scope(Plant).search_by_name(plant_search_name)
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
