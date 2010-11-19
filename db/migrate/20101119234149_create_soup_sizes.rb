class CreateSoupSizes < ActiveRecord::Migration
  def self.up
    create_table :soup_sizes do |t|
      t.string :name

      t.timestamps
    end
  end

  def self.down
    drop_table :soup_sizes
  end
end
