FactoryGirl.define do
  factory :other_material do
    sequence(:name) { |n| "other_material#{n}" }
  end
end
