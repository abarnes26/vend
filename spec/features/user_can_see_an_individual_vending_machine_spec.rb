require 'rails_helper'

feature 'When a user visits a vending machine show page' do
  scenario 'they see the location of that machine' do
    owner = Owner.create(name: "Sam's Snacks")
    dons  = owner.machines.create(location: "Don's Mixed Drinks")

    visit machine_path(dons)

    expect(page).to have_content("Don's Mixed Drinks Vending Machine")
  end

  scenario 'they see all the snacks in that machine with their price' do
    owner = Owner.create(name: "Sam's Snacks")
    hanks  = owner.machines.create(location: "Hank's Snacks")
    snack1 = hanks.snacks.create(name: "White Castle Burger", price: 3.50)
    snack2 = hanks.snacks.create(name: "Pop Rocks", price: 1.50)
    snack3 = hanks.snacks.create(name: "Flaming Hot Cheetos", price: 2.50)

    visit machine_path(hanks)

    expect(page).to have_content(snack1.name)
    expect(page).to have_content(snack1.price)
    expect(page).to have_content(snack2.name)
    expect(page).to have_content(snack2.price)
    expect(page).to have_content(snack3.name)
    expect(page).to have_content(snack3.price)
    expect(page).to have_content("Average Price: $2.50")
  end
end
