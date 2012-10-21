class API < Grape::API

  format :json
  error_format :json

  version 'v1', :using => :header, :vendor => "App"

  rescue_from Mongoid::Errors::DocumentNotFound do |error|
    rack_response({"error" => {"message" => "We didn't find what we were looking for"}}.to_json, 404)
  end

  mount Users::APIV1

end
