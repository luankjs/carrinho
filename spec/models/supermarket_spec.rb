require 'rails_helper'

RSpec.describe Supermarket, type: :model do
  it "is a valid factory" do
  	expect(FactoryGirl.create(:supermarket)).to be_valid
  end

  it "is invaid without name" do
  	expect(FactoryGirl.build(:supermarket, name: nil)).to be_invalid
  end
end
