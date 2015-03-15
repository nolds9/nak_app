class ResultsController < ApplicationController

  def index
    if params[:query]
      query = params[:query].gsub(' ', '+')
      response = HTTParty.get("http://capitolwords.org/api/1/text.json?phrase=#{query}&apikey=83af50945e0c4f90861fb472e7d148e3")
      result = JSON.parse(response.body)
      @result = result['results']
      @query = params[:query]
    else
      @result = nil
    end
  end


  def show
    response = HTTParty.get("http://capitolwords.org/api/1/text.json?phrase=#{query}&apikey=83af50945e0c4f90861fb472e7d148e3")
    @result = JSON.parse(response.body)
    @result_id = @result['id']



  end

  # def show
  #   if params[:query params[:quote]]
      
  #     @quote = @result['speaking']

  #     quote = params[:query params[:quote]].gsub(' ', '+')
  #     yoda_response = HTTParty.get("https://yoda.p.mashape.com/yoda?sentence=#{quote}")
  #     yoda_result = JSON.parse(yoda_response.body)
  #     @yoda_result = yoda_result




      
  #   else



  #     @result = nil
  #   end
 
  # end


end
