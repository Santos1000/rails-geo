class CompaniesController < ApplicationController

  def index
    if params[:query].present?
      @quotes_search = request_api(params[:query])
    end
  end

  def show
    # search_company
  end

  private

  def request_api(search)
    url = "https://yh-finance.p.rapidapi.com/auto-complete?q=#{search}"
    data = HTTParty.get(
      url,
      headers: {
        'X-RapidAPI-Key' => ENV.fetch('RAPIDAPI_API_KEY')
      }
    )
    #data = JSON.parse(response.body)

    # binding.pry
    @quotes = data['quotes']

  end
end
