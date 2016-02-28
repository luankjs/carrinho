require 'rails_helper'

RSpec.describe Supermarkets::ProductsController, type: :routing do
	describe "routing" do
		it "routes to #index" do
			expect(get: "/supermarkets/1/products").to route_to("supermarkets/products#index", supermarket_id: "1")
		end
	end
end