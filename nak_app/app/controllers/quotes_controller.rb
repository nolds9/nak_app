class QuotesController < ApplicationController

  def index
    if params[:query]
      query = params[:query].gsub(' ', '+')
      #response = HTTParty.get("https://api.edamam.com/search?q=#{query}")
      response = HTTParty.get("https://api.edamam.com/search?q=#{query}&app_id=e1898b85&app_key=565e8de817c50623627e2e8b1107117d")
      result = JSON.parse(response.body)
      @result = result['hits']
    else
      @result = nil
    end
  end

end
