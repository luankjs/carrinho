require 'rails_helper'

RSpec.describe Supermarkets::ProductsController, type: :controller do
	describe 'GET #index' do
		before do
			@supermarketA = FactoryGirl.create(:supermarket)
			@supermarketB = FactoryGirl.create(:supermarket)
			@productA = FactoryGirl.create(:product, supermarket: @supermarketA)
			@productB = FactoryGirl.create(:product, supermarket: @supermarketB)
		end

		it "assigns to return correct product" do
			get :index, supermarket_id: @supermarketA.id

			expect(assigns(:products)).to eq([@productA])
		end

		it "assigns to load correct supermarket" do
			get :index, supermarket_id: @supermarketB.id

			expect(assigns(:supermarket)).to eq(@supermarketB)
		end
	end
end
