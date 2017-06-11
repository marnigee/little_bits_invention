FactoryGirl.define do
  factory :bit do
    sequence(:name) { |n| "bit#{n}" }
  end
end
