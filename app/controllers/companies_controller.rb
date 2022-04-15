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
    #data = JSON.parse(response.body)
    @quotes = data['quotes']
  end


  # def find_company(symbol)
  #   request_api(
  #     "https://yh-finance.p.rapidapi.com/auto-complete?q=#{URI.encode_www_form(symbol)}"
  #   )
  # end
end

