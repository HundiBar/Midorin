require 'base64'
require 'uri'
require 'net/http'
require 'json'

class PlantsController < ApplicationController
  skip_before_action :authenticate_user!, only: :index
  before_action :set_plant, only: [:show]

  def index
    test_hash = {"id"=>25969978, "custom_id"=>nil, "meta_data"=>{"latitude"=>nil, "longitude"=>nil, "date"=>"2021-08-12", "datetime"=>"2021-08-12"}, "uploaded_datetime"=>1628748854.727191, "finished_datetime"=>1628748855.157581, "images"=>[{"file_name"=>"bdb0d80c04924c238f14791df7b32b9f.jpg", "url"=>"https://plant.id/media/images/bdb0d80c04924c238f14791df7b32b9f.jpg"}], "suggestions"=>[{"id"=>169236035, "plant_name"=>"Codiaeum variegatum", "plant_details"=>{"common_names"=>["fire croton", "garden croton", "variegated croton"], "url"=>"https://en.wikipedia.org/wiki/Codiaeum_variegatum", "name_authority"=>"Codiaeum variegatum (L.) Rumph. ex A.Juss.", "wiki_description"=>{"value"=>"Codiaeum variegatum (fire croton, garden croton, or variegated croton; syn. Croton variegatum L.) is a species of plant in the genus Codiaeum, which is a member of the family Euphorbiaceae. It was described by Carl Linnaeus in 1753. It is native to Indonesia, Malaysia, Australia, and the western Pacific Ocean islands, growing in open forests and scrub.\nThe garden crotons should not be confused with Croton, a cosmopolitan genus also in the Euphorbiaceae, containing more than 700 species of herbs, shrubs and trees.", "citation"=>"https://en.wikipedia.org/wiki/Codiaeum_variegatum", "license_name"=>"CC BY-SA 3.0", "license_url"=>"https://creativecommons.org/licenses/by-sa/3.0/"}, "taxonomy"=>{"class"=>"Magnoliopsida", "family"=>"Euphorbiaceae", "genus"=>"Codiaeum", "kingdom"=>"Plantae", "order"=>"Malpighiales", "phylum"=>"Magnoliophyta"}, "synonyms"=>["Codiaeum chrysosticton", "Croton variegatus", "Crozophyla variegata", "Oxydectes variegata", "Phyllaurea variegata"], "scientific_name"=>"Codiaeum variegatum", "structured_name"=>{"genus"=>"codiaeum", "species"=>"variegatum"}}, "probability"=>0.995789111, "confirmed"=>false, "similar_images"=>[{"id"=>"53fd53e036fda33422dbddbab78bd408", "similarity"=>0.7133660303995712, "url"=>"https://plant-id.ams3.cdn.digitaloceanspaces.com/similar_images/20210721.efnB4/images/53f/d53e036fda33422dbddbab78bd408.jpg", "url_small"=>"https://plant-id.ams3.cdn.digitaloceanspaces.com/similar_images/20210721.efnB4/images/53f/d53e036fda33422dbddbab78bd408.small.jpg"}, {"id"=>"8f04f02bb6687d47aa9c1eedf0b19da7", "similarity"=>0.6359711859912045, "url"=>"https://plant-id.ams3.cdn.digitaloceanspaces.com/similar_images/20210721.efnB4/images/8f0/4f02bb6687d47aa9c1eedf0b19da7.jpg", "url_small"=>"https://plant-id.ams3.cdn.digitaloceanspaces.com/similar_images/20210721.efnB4/images/8f0/4f02bb6687d47aa9c1eedf0b19da7.small.jpg"}]}], "modifiers"=>["crops_fast", "similar_images"], "secret"=>"TUD5LYd2C4eUCBB", "fail_cause"=>nil, "countable"=>true, "feedback"=>nil, "is_plant_probability"=>0.998540759, "is_plant"=>true}
    plant_search_name = test_hash["suggestions"].first["plant_name"]
    if plant_search_name.present?
      @plant = policy_scope(Plant).search_by_name(plant_search_name).first
    end
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

  # def search_results


  # end

  private

  def set_plant
    @plant = Plant.find(params[:id])
    authorize @plant
  end

end
