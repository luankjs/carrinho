require 'rails_helper'

RSpec.describe SupermarketController, type: :controller do
  describe "GET #index" do
  	before do
      @supermarket = FactoryGirl.create(:supermarket)
  		@supermarket2 = FactoryGirl.create(:supermarket, name: "Supermarket2")
  		@zipcode = FactoryGirl.create(:zipcode)
  		@supermarket.zipcodes << @zipcode
  		@supermarket.save
  	end

  	context "when receive a zipcode" do
  		it "assigns to return supermarkets from zipcode" do
				post :index, zipcode: @zipcode.number

				expect(assigns(:supermarkets)).to eq([@supermarket])
			end

      it "assigns to return correct quantity of supermarkets" do
        post :index, zipcode: @zipcode.number
        
        expect(assigns(:supermarkets).count).to eq(1)
      end

      it "assigns to zipcode is set" do
        post :index, zipcode: @zipcode.number

        expect(assigns(:zipcode)).to eq(@zipcode)
      end
  	end

    context "when not receive a zipcode" do
      it "assigns to return supermarkets without zipcode" do
        post :index

        expect(assigns(:supermarkets)).to include(@supermarket2)
      end

      it "assigns to return correct quantity of supermarkets" do
        post :index

        expect(assigns(:supermarkets).count).to eq(2)
      end

      it "assigns to zipcode is nil" do
        post :index

        expect(assigns(:zipcode)).to eq(nil)
      end
    end
  end
end
