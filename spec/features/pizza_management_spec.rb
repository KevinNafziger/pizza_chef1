require 'rails_helper'

RSpec.feature "PizzaManagement", type: :feature do
  let!(:topping1) { create(:topping) }
  let!(:topping2) { create(:topping) }

  scenario 'user creates a new pizza' do
    visit pizzas_url

    click_link('Create New Pizza')
    fill_in 'pizza_name', :with => 'Pizza 1'
    check(topping1.name)
    click_button 'Create Pizza'

    expect(page).to have_text('Pizza 1')
    expect(page).to have_text(topping1.name)
  end
  
  scenario 'user creates a new topping' do
    visit toppings_url

    click_link('Create Topping')
    fill_in 'topping_name', :with => 'Topping 42'

    click_button 'Create Topping'
    expect(page).to have_text('Topping 42')
  end

end
