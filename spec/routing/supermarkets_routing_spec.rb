require "rails_helper"

RSpec.describe SupermarketController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(:get => "/supermarkets/59056-200").to route_to("supermarket#index", zipcode: "59056-200")
    end
  end
end
