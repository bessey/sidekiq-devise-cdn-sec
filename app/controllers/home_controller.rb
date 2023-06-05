class HomeController < ApplicationController
  def index
    session[:counter] = 1
    render plain: "hello"
  end
end
