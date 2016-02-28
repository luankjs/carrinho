class Supermarkets::ProductsController < ApplicationController
	before_action :set_supermarket

  def index
  	@products = @supermarket.products
  end

  private
  def set_supermarket
  	@supermarket = Supermarket.find(params[:supermarket_id])
  end
end
