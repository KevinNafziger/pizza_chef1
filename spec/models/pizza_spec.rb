require 'rails_helper'

RSpec.describe Pizza, type: :model do
  let(:pizza) { build(:pizza) }

  it { should validate_uniqueness_of(:name) }
  it { should validate_presence_of(:name) }
  it { should have_many(:pizza_toppings) }
  it { should have_many(:toppings).through(:pizza_toppings) }

  it 'can have many toppings' do
    topping1 = create(:topping)
    topping2 = create(:topping)
    pizza.toppings << [topping1, topping2]
    expect(pizza.toppings).to include(topping1, topping2)
  end
end
