class MainController < ApplicationController
  def index
  	@supermarkets = Supermarket.all
  end
end
