# COMMupload img to cloudinary to create a url that can be called
# cloudinary_upload = Cloudinary::Uploader.upload(params[:plant][:image], options = {})
# upload_check = cloudinary_upload["secure_url"]
# file = URI.open(upload_check)

# # COMMuse cloudinary url to encode to base64
# base64_image = Base64.strict_encode64(file.read)

# # COMMmake api post request
# api_key = "KCkFk49ZTFNrQTwEcAnHeGDkD5UB7oPNbCBVdzpCeCOCXRf1Ph"
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
