require 'spec_helper'

feature 'Manage drinks' do

  background do
    user = create(:user)
    visit drinks_path
    fill_in 'Email', with: user.email
    fill_in 'Password', with: user.password
    click_button 'Sign in'
  end

  scenario 'adds a drink' do
    visit drinks_path

    expect {
    within "#new_drink" do
      fill_in 'Name', with: 'Vodka Tonic'
      click_button 'Create Drink'
    end
    }.to change(Drink, :count).by(1)
  end

  scenario 'deletes a drink' do
    visit drinks_path

    within "#new_drink" do
      fill_in 'Name', with: 'Vodka Tonic'
      click_button 'Create Drink'
    end

    expect{
      within "#drink_1" do
        click_link '(delete)'
      end
    }.to change(Drink, :count).by(-1)
    end

end