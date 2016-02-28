class SupermarketController < ApplicationController
	before_action :set_zipcode

  def index
  	@supermarkets = Supermarket.all
  	@supermarkets = @zipcode.supermarkets if @zipcode
  end

  private
  def set_zipcode
  	@zipcode = Zipcode.find_by_number(params[:zipcode]) if params[:zipcode]
  end
end
