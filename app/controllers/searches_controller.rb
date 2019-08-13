class SearchesController < ApplicationController
  def result
    @result = []
    @found_total = 0

    unless params[:q].blank?
      response = Elasticsearch::Model.search(params[:q], [Track, Listing])
      @result =  response.results.map(&:as_json)
      @found_total = response.results.total
    end
  end
end
