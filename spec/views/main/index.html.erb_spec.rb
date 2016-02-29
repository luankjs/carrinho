require 'rails_helper'

RSpec.describe "main/index.html.erb", type: :feature do
	before do
		@supermarket = FactoryGirl.create(:supermarket)
	end
  
  it "assigns supermarkets are rendered" do
		visit root_path

		expect(page).to have_content @supermarket.name
  end
end