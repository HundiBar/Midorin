require 'base64'
require 'uri'
require 'net/http'
require 'json'

class PlantsController < ApplicationController
  skip_before_action :authenticate_user!, only: :index
  before_action :set_plant, only: [:show]

  def index
    @plant = Plant.new
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

  # def search
  #   @plant = Plant.new
  #   # @pot = Pot.new
  #   authorize @plant
  # end

  def search_results
    test_hash = {"id"=>25891919, "custom_id"=>nil, "meta_data"=>{"latitude"=>nil, "longitude"=>nil, "date"=>"2021-08-11", "datetime"=>"2021-08-11"}, "uploaded_datetime"=>1628665679.851222, "finished_datetime"=>1628665680.400155, "images"=>[{"file_name"=>"f2f533e63e2041b788d2eba743c5e50a.jpg", "url"=>"https://plant.id/media/images/f2f533e63e2041b788d2eba743c5e50a.jpg"}], "suggestions"=>[{"id"=>168839203, "plant_name"=>"Euphorbia lactea", "plant_details"=>{"common_names"=>["Candelabra Spurge", "Mottled Spurge", "Elkhorn", "Frilled Fan Spurge", "frilled fan", "dragon bones", "false cactus", "hatrack cactus"], "url"=>"https://en.wikipedia.org/wiki/Euphorbia_lactea", "name_authority"=>"Euphorbia lactea Haw.", "wiki_description"=>{"value"=>"Euphorbia lactea is a species of spurge native to tropical Asia, mainly in India.\nIt is an erect shrub growing up to 5 metres (16 ft) tall, with succulent branches 3–5 centimetres (1.2–2.0 in) diameter, ridged, with a triangular or rhombic cross-section; the ridges are spiny, with short spines up to 5 millimetres (0.20 in) long. The leaves are minute, and soon deciduous. All parts of the plant contain a poisonous milky latex. Common names include mottled spurge, frilled fan, elkhorn, candelabra spurge, candelabrum tree, candelabra cactus, candelabra plant, dragon bones, false cactus, hatrack cactus, milkstripe euphorbia, mottled candlestick.\nIt is used medicinally in India. It is widely grown as an ornamental plant, both in the tropics, and as a houseplant in temperate regions; a number of cultivars have been selected for ornamental use, notably 'Cristata' with frilled branching.", "citation"=>"https://en.wikipedia.org/wiki/Euphorbia_lactea", "license_name"=>"CC BY-SA 3.0", "license_url"=>"https://creativecommons.org/licenses/by-sa/3.0/"}, "taxonomy"=>{"class"=>"Magnoliopsida", "family"=>"Euphorbiaceae", "genus"=>"Euphorbia", "kingdom"=>"Plantae", "order"=>"Malpighiales", "phylum"=>"Magnoliophyta"}, "synonyms"=>[], "scientific_name"=>"Euphorbia lactea", "structured_name"=>{"genus"=>"euphorbia", "species"=>"lactea"}}, "probability"=>0.992356777, "confirmed"=>false, "similar_images"=>[{"id"=>"c0fd9d754ea8fbd75c55b33d14e3933d", "similarity"=>0.7499934840078923, "url"=>"https://plant-id.ams3.cdn.digitaloceanspaces.com/similar_images/20210721.efnB4/images/c0f/d9d754ea8fbd75c55b33d14e3933d.jpg", "url_small"=>"https://plant-id.ams3.cdn.digitaloceanspaces.com/similar_images/20210721.efnB4/images/c0f/d9d754ea8fbd75c55b33d14e3933d.small.jpg"}, {"id"=>"46c867b961934b0a07fea449a5895579", "similarity"=>0.7334339124326539, "url"=>"https://plant-id.ams3.cdn.digitaloceanspaces.com/similar_images/20210721.efnB4/images/46c/867b961934b0a07fea449a5895579.jpg", "url_small"=>"https://plant-id.ams3.cdn.digitaloceanspaces.com/similar_images/20210721.efnB4/images/46c/867b961934b0a07fea449a5895579.small.jpg"}]}], "modifiers"=>["crops_fast", "similar_images"], "secret"=>"ffLuro89XHttw1B", "fail_cause"=>nil, "countable"=>true, "feedback"=>nil, "is_plant_probability"=>0.993424058, "is_plant"=>true}
    p plant_search_name = test_hash["suggestions"].first["plant_name"]

    p @plant = Plant.search_by_name(plant_search_name).first
    authorize @plant

  end

  private

  def set_plant
    @plant = Plant.find(params[:id])
    authorize @plant
  end

end
