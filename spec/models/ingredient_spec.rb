require 'spec_helper'

describe Ingredient do
  it 'has a valid factory' do
    expect(build(:ingredient)).to be_valid
  end
  it 'is valid with a name' do
    ingredient = Ingredient.new(name: 'Vodka')
    expect(ingredient).to be_valid
  end
  it 'is invalid without a name' do
    ingredient = Ingredient.new(name: '')
    expect(ingredient).to have(1).errors_on(:name)
  end
  it 'is invalid with a duplicate name' do
    Ingredient.create(name: 'Vodka')
    ingredient = Ingredient.new(name: 'Vodka')
  end
  it 'is ordered alphabetically' do
    beta = Ingredient.create(name: 'Beta')
    alpha = Ingredient.create(name: 'Alpha')
    gamma = Ingredient.create(name: 'Gamma')

    expect(Ingredient.all).to eq [alpha, beta, gamma]
  end

  it 'can have drinks' do
    ingredient = create(:ingredient)
    drn1 = create(:drink)
    drn2 = create(:drink)
    drn3 = create(:drink)
    ingredient.drinks << [drn1, drn2, drn3]

    expect(ingredient.drinks.length).to eq 3
  end
end