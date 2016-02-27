FactoryGirl.define do
  factory :product do
    name "MyProduct"
		price 1.5
		description "MyDescription"
		supermarket
  end
end
