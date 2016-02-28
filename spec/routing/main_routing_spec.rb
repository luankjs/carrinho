require 'rails_helper'

RSpec.describe MainController, type: :routing do
	describe 'routing' do
		it "routes to root" do
			expect(get: '/').to route_to('main#index')
		end
	end
end