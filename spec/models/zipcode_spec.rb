require 'rails_helper'

RSpec.describe Zipcode, type: :model do
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
