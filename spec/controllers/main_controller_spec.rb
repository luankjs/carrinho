require 'rails_helper'

RSpec.describe MainController, type: :controller do

  describe "GET #index" do
    it "returns all supermarkets" do
    	supermarket = FactoryGirl.create(:supermarket)

      get :index
      
      expect(assigns(:supermarkets)).to eq([supermarket])
    end
  end

end
