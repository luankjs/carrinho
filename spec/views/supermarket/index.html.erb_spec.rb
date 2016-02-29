require 'rails_helper'

RSpec.describe "supermarket/index.html.erb", type: :feature do
  before do
  	@zipcode = FactoryGirl.create(:zipcode)
  	@supermarket = FactoryGirl.create(:supermarket)
  	@supermarket.zipcodes << @zipcode
  	@supermarket.save

  	visit root_path

  	fill_in :zipcode, with: @zipcode.number
  	click_button I18n.t(:search)
  end

  it "assigns to render correct supermarket by zipcode" do
  	expect(page).to have_content(@supermarket.name)
  end

  it "assigns to render num ber by zipcode" do
  	expect(page).to have_content(@zipcode.number)
  end
end
