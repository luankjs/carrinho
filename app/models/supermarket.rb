class Supermarket < ActiveRecord::Base
	validates :name, presence: true
end