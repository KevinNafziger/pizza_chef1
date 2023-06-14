FactoryBot.define do
  factory :topping do
    sequence(:name) { |n| "Topping #{n}" }
  end
end