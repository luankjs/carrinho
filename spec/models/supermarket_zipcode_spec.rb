require 'rails_helper'

RSpec.describe SupermarketZipcode, type: :model do
	describe SupermarketZipcode, "Validations" do
		it "is a valid factory" do
			expect(FactoryGirl.create(:supermarket_zipcode)).to be_valid
		end

		it "is invalid without supermarket" do
			expect(FactoryGirl.build(:supermarket_zipcode, supermarket: nil)).to be_invalid
		end

		it "is invalid without zipcode" do
			expect(FactoryGirl.build(:supermarket_zipcode, zipcode: nil)).to be_invalid
		end
	end
end
