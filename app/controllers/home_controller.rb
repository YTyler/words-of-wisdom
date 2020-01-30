class HomeController < ApplicationController

  def index
    response = HTTParty.get('http://localhost:3000/authors', format: :plain)
    @parsed = JSON.parse response, symbolize_names: true
    render :index
  end

end
