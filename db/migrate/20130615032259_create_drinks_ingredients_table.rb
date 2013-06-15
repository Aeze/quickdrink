class CreateDrinksIngredientsTable < ActiveRecord::Migration
  def self.up
    create_table :drinks_ingredients, :id => false do |t|
      t.integer :drink_id
      t.integer :ingredient_id
    end
  end

  def self.down
    drop_table :drinks_ingredients
  end
end
