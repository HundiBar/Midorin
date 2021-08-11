require 'base64'
require 'uri'
require 'net/http'

class PlantsController < ApplicationController
  skip_before_action :authenticate_user!, only: :index
  before_action :set_plant, only: [:show]

  def index
    if params[:query].present?
      @query = params[:query]
      @plants = policy_scope(Plant).search_by_name(params[:query]).order(created_at: :desc)
    else
      @plants = policy_scope(Plant).order(created_at: :desc)
    end
  end

  def show
    @pot = Pot.new
  end

  def search
    @plant = Plant.new
    # @pot = Pot.new
    authorize @plant
  end

  def search_results
    # convert img params  to base64
    cloudinary_upload = Cloudinary::Uploader.upload(params[:plant][:image], options = {})
    plant_base64 = "data:image/png;base64,#{Base64.encode64(cloudinary_upload["secure_url"]) { |io| io.read }}"
    # make api call
    uri = URI("https://api.plant.id/v2/identify?api_key=KCkFk49ZTFNrQTwEcAnHeGDkD5UB7oPNbCBVdzpCeCOCXRf1Ph&image=#{plant_base64}")
    res = Net::HTTP.get_response(uri)
    puts res.body if res.is_a?(Net::HTTPSuccess)
    # https://api.plant.id/v2/identify
    # convert the data to plants from DB matching
    # display to user via @plants
    @plants = Plant.all
    authorize @plants
  end

  private

  def set_plant
    @plant = Plant.find(params[:id])
    authorize @plant
  end

end
