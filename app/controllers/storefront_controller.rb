require 'net/http'
require 'json'
require 'uri'

class StorefrontController < ApplicationController
  def keychain
    url = URI.parse('https://api.nitestats.com/v1/epic/keychain')
    response = Net::HTTP.get_response(url)

    if response.is_a?(Net::HTTPSuccess)
      keychain = JSON.parse(response.body)
      render json: keychain, status: :ok
    else
      render json: { error: 'Failed to fetch keychain data' }, status: :bad_gateway
    end
  end
end
