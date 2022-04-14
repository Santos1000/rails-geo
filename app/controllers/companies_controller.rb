class CompaniesController < ApplicationController

  def index
    request_api
    # companies = find_company(params[:company])
    # unless companies
    #   flash[:alert] = 'company not found'
    #   return render action: :index
    # end
    # @company = companies.first
  end

  def show

  end

  def about

  end

  private

  def request_api

    url = "https://yh-finance.p.rapidapi.com/auto-complete?q=tesla&region=US"
    data = HTTParty.get(
      url,
      headers: {
        'X-RapidAPI-Key' => ENV.fetch('RAPIDAPI_API_KEY')
      }
    )
    binding.pry

    data = JSON.parse(response.body)
    @quotes = data['quotes']


  end


  # def find_company(symbol)
  #   request_api(
  #     "https://yh-finance.p.rapidapi.com/auto-complete?q=#{URI.encode_www_form(symbol)}"
  #   )
  # end
end

  #   data_exchDisp   = []
  #   data_longname  = []
  #   data_symbol  = []
  #   data_region = []
# ------------------------
  # def search_companies(symbol)
  #   request_api(
  #     "https://restcountries-v1.p.rapidapi.com/name/#{URI.encode(symbol)}"
  #   )

  #     # puts "#{user["name"]} - #{user["bio"]}"

  # end

# ------------------------
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

  # end
# end
