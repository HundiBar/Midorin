class ApiCall

  def initialize(api_params)
    @api_params = api_params
  end

  def call_api

    cloudinary_upload = Cloudinary::Uploader.upload(@api_params[:plant][:image], options = {})
    upload_check = cloudinary_upload["secure_url"]
    file = URI.open(upload_check)

    # COMMuse cloudinary url to encode to base64
    base64_image = Base64.strict_encode64(file.read)

    # COMMmake api post request
    api_key = ENV["PLANT_API_KEY"]
    images = [base64_image]
    modifiers = ["crops_fast", "similar_images"]
    plant_language = "en"
    plant_details = ["common_names", "url", "name_authority", "wiki_description", "taxonomy", "synonyms"]

    uri = URI('https://api.plant.id/v2/identify')
    https = Net::HTTP.new(uri.host, uri.port)
    https.use_ssl = true

    request = Net::HTTP::Post.new(uri.path)

    data = {
      "images": images,
      "modifiers": modifiers,
      "plant_details": plant_details,
      "api_key": api_key
    }.to_json

    # COMMget the response from the post request
    request.body = data

    request["Api-Key"] = api_key
    request["Content-Type"] = "application/json"
    response = https.request(request)
    p json_raw = response.body
    p json_parse = JSON.parse(json_raw)
    plant_search_name = json_parse["suggestions"].first["plant_name"]
  end
end
