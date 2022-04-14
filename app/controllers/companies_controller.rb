require 'uri'
require "open-uri"
require 'excon'

class CompaniesController < ApplicationController


  private

  def request_api(url)
    response = Excon.get(
      url,
      headers: {
        'X-RapidAPI-Host' => URI.parse(url).host,
        'X-RapidAPI-Key' => ENV.fetch('RAPIDAPI_API_KEY')
      }
    )
    binding.pry
    return nil if response.status != 200

    JSON.parse(response.body)
  end


  def find_company(symbol)
    request_api(
      "https://yh-finance.p.rapidapi.com/auto-complete?q=#{URI.encode_www_form(symbol)}"
    )
  end

  # def index
  #   company = find_company(params[:company])
  #   unless company
  #     flash[:alert] = 'company not found'
  #     return render action: :index
  #   end
  #   @company = company.first
  # end


  #   data_exchDisp   = []
  #   data_longname  = []
  #   data_symbol  = []
  #   data_region = []




  # def search_companies(symbol)
  #   request_api(
  #     "https://restcountries-v1.p.rapidapi.com/name/#{URI.encode(symbol)}"
  #   )

  #     # puts "#{user["name"]} - #{user["bio"]}"

  # end


  # if data_json.select{ |key| key["symbol"] == params[:query] }.empty?
  # flash[:alert] = "This coin doesn't exist, type again."
  # else
  # response = data_json.select{ |key| key["symbol"] == params[:query] }.first
  # @coin = response.transform_keys(&:to_sym)
  # @btc = get_btc
  # end
# ------------------------

# require "json"
# require "open-uri"

# url = "https://yh-finance.p.rapidapi.com/auto-complete?q=tesla&region=US"
# user_serialized = URI.open(url).read
# user = JSON.parse(user_serialized)

# puts "#{user["name"]} - #{user["bio"]}"

# -------------------------

# url = 'https://api.coingecko.com/api/v3/coins/markets?vs_currency=usd'
  # if params[:query].present?
  # data = HTTParty.get(url).body
  # data_json = JSON.parse(data)
    # if data_json.select{ |key| key["symbol"] == params[:query] }.empty?
    # flash[:alert] = "This coin doesn't exist, type again."
    # else
    # response = data_json.select{ |key| key["symbol"] == params[:query] }.first
  # @coin = response.transform_keys(&:to_sym)
  # @btc = get_btc
  # end
# end

  def show

  end

  def about
    @members = [ 'thanh', 'dimitri', 'germain', 'damien', 'julien' ]
  end
end
