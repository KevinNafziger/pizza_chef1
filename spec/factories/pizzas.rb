FactoryBot.define do
  factory :pizza do
    sequence(:name) { |n| "Pizza #{n}" }
  end
end