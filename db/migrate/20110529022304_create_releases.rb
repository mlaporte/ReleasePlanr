class CreateReleases < ActiveRecord::Migration
  def self.up
    create_table :releases do |t|
      t.integer :product_id
      t.string :name
      t.string :details
      t.integer :position
      t.integer :project_id
      t.boolean :is_completed

      t.timestamps
    end
  end

  def self.down
    drop_table :releases
  end
end
