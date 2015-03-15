class QuotesController < ApplicationController

  def index
    if params[:query]
      query = params[:query].gsub(' ', '+')
      #response = HTTParty.get("https://api.edamam.com/search?q=#{query}")
      response = HTTParty.get("http://capitolwords.org/api/1/text.json?phrase=#{query}&apikey=83af50945e0c4f90861fb472e7d148e3")
      result = JSON.parse(response.body)
      @result = result['hits']
    else
      @result = nil
    end
  end

end
