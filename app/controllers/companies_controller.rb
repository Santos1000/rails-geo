class CompaniesController < ApplicationController

  def index
    request_api
  end

  def about
    search_company
  end

  def search_company
    # url = "https://yh-finance.p.rapidapi.com/auto-complete?q=#{:query_name}&region=#{:query_region}"





    
    # data = HTTParty.get(
    #   url,
    #   headers: {
    #     'X-RapidAPI-Key' => ENV.fetch('RAPIDAPI_API_KEY')
    #   }
    # )
    # #data = JSON.parse(response.body)
    # @search_quotes = data['quotes']




    # companies = search_company(params[:company])
      # unless companies
      #   flash[:alert] = 'company not found'
      #   return render action: :index
      # end
    # @company = companies.first
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

  def company_params
    params.require(:company_share).permit(:query_name, :query_region)
  end
end
