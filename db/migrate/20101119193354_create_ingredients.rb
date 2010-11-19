class CreateIngredients < ActiveRecord::Migration
  def self.up
    create_table :ingredients do |t|
      t.references :ingredient_type
      t.string :name

      t.timestamps
    end
    IngredientType.reset_column_information
    Ingredient.reset_column_information

    data = {
      'Bread' => %w(White Wheat Sourdough MultiGrain SunFlourWheat),
      'Spread' => %w(Mustard Mayo FatFreeMayo Horseradish MiracleWhip),
      'Meat' => %w(Turkey RoastBeef Ham Pastrami Tuna ChickenSalad),
      'Cheese' => %w(Swiss Provolone Cheddar PepperJack),
      'Veggies' => %w(Lettuce Sprouts GreenPeppers Onion Pickle Tomato BananaPepper),
      'Cookie' => %w(ChocolateChip ChoclolateChipWalnut OatmealRasin),
      'Soup' => %w(ChickenNoodle Potato Vegtable Ministroni)
    }
    data.each_pair do |type,names|
      it = IngredientType.create(:name => type)
      names.each do |name|
        it.ingredients.create(:name => name)
      end
    end
  end

  def self.down
    drop_table :ingredients
  end
end
