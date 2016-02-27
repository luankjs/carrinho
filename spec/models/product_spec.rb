require 'rails_helper'

RSpec.describe Product, type: :model do
  describe Product, "Validations" do
  	it "is a valid factory" do
  		expect(FactoryGirl.create(:product)).to be_valid
  	end

  	it "is invalid without name" do
  		expect(FactoryGirl.build(:product, name: nil)).to be_invalid
  	end
  	
  	it "is invalid without description" do
  		expect(FactoryGirl.build(:product, description: nil)).to be_invalid
  	end
  	
  	it "is invalid without price" do
  		expect(FactoryGirl.build(:product, price: nil)).to be_invalid
  	end

  	it "is invalid when price is not a number" do
  		expect(FactoryGirl.build(:product, price: "abc")).to be_invalid
  	end

  	it "is invalid when price is less than or equal 0" do
  		expect(FactoryGirl.build(:product, price: -1.5)).to be_invalid
  		expect(FactoryGirl.build(:product, price: 0.0)).to be_invalid
  	end
  	
  	it "is invalid without supermarket" do
  		expect(FactoryGirl.build(:product, supermarket: nil)).to be_invalid
  	end
  end
end
