class CreateSandwichSizes < ActiveRecord::Migration
  def self.up
    create_table :sandwich_sizes do |t|
      t.string :name

      t.timestamps
    end
  end

  def self.down
    drop_table :sandwich_sizes
  end
end
