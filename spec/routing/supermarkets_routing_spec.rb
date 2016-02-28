require "rails_helper"

RSpec.describe SupermarketController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(post: "/supermarkets").to route_to("supermarket#index")
    end
  end
end
