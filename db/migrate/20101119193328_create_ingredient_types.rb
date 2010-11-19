class CreateIngredientTypes < ActiveRecord::Migration
  def self.up
    create_table :ingredient_types do |t|
      t.string :name, :limit => 20

      t.timestamps
    end
   
  end

  def self.down
    drop_table :ingredient_types
  end
end
