require "rails_helper"

RSpec.describe Zipcode, type: :model do
	describe Zipcode, "Validation" do
		it "has a valid factory" do
			expect(FactoryGirl.create(:zipcode)).to be_valid
		end

		it "is invalid without number" do
			expect(FactoryGirl.build(:zipcode, number: nil)).to be_invalid
		end

		it "is invalid when duplicate" do
			FactoryGirl.create(:zipcode)

			expect(FactoryGirl.build(:zipcode)).to be_invalid
		end

		it "is invalid when out format" do
			expect(FactoryGirl.build(:zipcode, number: "abcde-fgh")).to be_invalid
		end
	end

	describe Zipcode, "Association" do
		before do
			@zipcode = FactoryGirl.build(:zipcode)
			@supermarket = FactoryGirl.create(:supermarket)
			@zipcode.supermarkets << @supermarket
			@zipcode.save
		end

		it "assings supermarket_zipcode was created" do
			expect change{ SupermarketZipcode.count }.by(1)
		end

		it "assings supermarket_zipcode zipcode is correct" do
			expect(SupermarketZipcode.last.zipcode).to eq(@zipcode)
		end

	  it "returns correct supermarkets from zipcode" do
	  	expect(@zipcode.supermarkets).to eq([@supermarket])
	  end
	end
end
