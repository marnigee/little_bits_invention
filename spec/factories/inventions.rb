FactoryGirl.define do
  factory :invention do
    sequence(:title) { |n| "invention#{n}" }
    sequence(:description) { |n| "description#{n}" }
  end
end
