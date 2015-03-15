class QuotesController < ApplicationController

  def index
    if params[:quote]
      quote = params[:quote].gsub(' ', '+')
      
      response = HTTParty.get "https://yoda.p.mashape.com/yoda?sentence=#{quote}",
       headers:{
       "X-Mashape-Key" => "Q2fl9yERfAmsh9l9IkHAVzTY8Jqbp1YjlVZjsna0jbJkFrQrUL",
       "Accept" => "text/plain"
       } 
      result = JSON.parse(response.body)
      @quote = result
    else
      @result = nil
    end


    # These code snippets use an open-source library.
    # response = HTTParty.get "https://yoda.p.mashape.com/yoda?sentence=You+will+learn+how+to+speak+like+me+someday.++Oh+wait.",
    # headers:{
    # "X-Mashape-Key" => "Q2fl9yERfAmsh9l9IkHAVzTY8Jqbp1YjlVZjsna0jbJkFrQrUL",
    # "Accept" => "text/plain"
    # } 

  end
end