require 'base64'
require 'uri'
require 'net/http'
require 'json'
require 'open-uri'

require_relative "../../test_hash.rb"
# require_relative "api_call.rb"


class PlantsController < ApplicationController
  skip_before_action :authenticate_user!, only: :index
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
      # cloudinary_upload = Cloudinary::Uploader.upload(params[:plant][:image], options = {})
      # upload_check = cloudinary_upload["secure_url"]
      # file = URI.open(upload_check)

      # # COMMuse cloudinary url to encode to base64
      # base64_image = Base64.strict_encode64(file.read)

      # # COMMmake api post request
      # api_key = ENV["PLANT_API_KEY"]
      # images = [base64_image]
      # modifiers = ["crops_fast", "similar_images"]
      # plant_language = "en"
      # plant_details = ["common_names", "url", "name_authority", "wiki_description", "taxonomy", "synonyms"]

      # uri = URI('https://api.plant.id/v2/identify')
      # https = Net::HTTP.new(uri.host, uri.port)
      # https.use_ssl = true

      # request = Net::HTTP::Post.new(uri.path)

      # data = {
      #   "images": images,
      #   "modifiers": modifiers,
      #   "plant_details": plant_details,
      #   "api_key": api_key
      # }.to_json

      # # COMMget the response from the post request
      # request.body = data

      # request["Api-Key"] = api_key
      # request["Content-Type"] = "application/json"
      # response = https.request(request)
      # p json_raw = response.body
      # p json_parse = JSON.parse(json_raw)
      # # binding.pry
      # plant_search_name = json_parse["suggestions"].first["plant_name"]
      plant_search_name = TestHash["suggestions"].first["plant_name"]
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
