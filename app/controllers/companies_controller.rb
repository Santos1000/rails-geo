class CompaniesController < ApplicationController

  def index
  end

  def show
  end

  def about
    @members = [ 'thanh', 'dimitri', 'germain', 'damien', 'julien' ]
  end
end
