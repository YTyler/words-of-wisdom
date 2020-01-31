class AuthorsController < ApplicationController

  def show
    id = params[:id]
    response = HTTParty.get("http://localhost:3000/authors/#{id}", format: :plain)
    @parsed = JSON.parse response, symbolize_names: true

    response2 = HTTParty.get("http://localhost:3000/authors/#{id}/quotes", format: :plain)
    @quotes = JSON.parse response2, symbolize_names: true
    render :show
  end

end
