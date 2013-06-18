require 'spec_helper'

describe Drink do
  it 'has a valid factory' do
    expect(build(:drink)).to be_valid
  end
  it 'is valid with a name' do
    drink = Drink.new(name: 'Vodka Tonic')
    expect(drink).to be_valid
  end
  it 'is invalid without a name' do
    drink = Drink.new(name: '')
    expect(drink).to have(1).errors_on(:name)
  end
  it 'is invalid with a duplicate name' do
    Drink.create(name: 'Screwdriver')
    drink = Drink.new(name: 'Screwdriver')
  end
  it 'is ordered alphabetically' do
    beta = Drink.create(name: 'Beta')
    alpha = Drink.create(name: 'Alpha')
    gamma = Drink.create(name: 'Gamma')

    expect(Drink.all).to eq [alpha, beta, gamma]
  end
  it 'can have ingredients' do
    drink = create(:drink)
    ing1 = create(:ingredient)
    ing2 = create(:ingredient)
    ing3 = create(:ingredient)
    drink.ingredients << [ing1, ing2, ing3]

    expect(drink.ingredients.length).to eq 3
  end
end