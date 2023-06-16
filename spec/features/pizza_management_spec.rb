require 'rails_helper'

RSpec.feature "PizzaManagement", type: :feature do
  let!(:topping1) { create(:topping) }
  let!(:topping2) { create(:topping) }
  let!(:topping3) { create(:topping) }

  scenario 'user can create a pizza and add toppings' do
    visit pizzas_url

    click_link('Create New Pizza')
    fill_in 'pizza_name', :with => 'Pizza 1'
    check(topping1.name)
    check(topping3.name)
    click_button 'Create Pizza'

    expect(page).to have_text('Pizza 1')
    expect(page).to have_text(topping1.name)
    expect(page).to have_text(topping3.name)
  end

  scenario 'user can create a topping, and change its name' do
    visit toppings_url

    click_link('Create Topping')
    fill_in 'topping_name', :with => 'aaTopping 42'

    click_button 'Create Topping'
    expect(page).to have_text('aaTopping 42')
    first(:link, 'Edit').click
    fill_in 'topping_name', :with => 'aaTopping 43'
    click_button 'Update Topping'
    expect(page).to have_text('aaTopping 43')
  end

  scenario 'user can creates a topping, then delete that topping' do
    visit toppings_url
    click_link('Create Topping')
    fill_in 'topping_name', :with => 'aaaNewTopping'
    click_button 'Create Topping'
    expect(page).to have_text('aaaNewTopping')
    first(:button, 'Delete').click
    expect(page).to have_text('The topping was successfully deleted.')
  end
end
