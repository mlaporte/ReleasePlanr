class CreateRequirements < ActiveRecord::Migration
  def self.up
    create_table :requirements do |t|
      t.integer :product_id
      t.integer :release_id
      t.integer :user_id
      t.string :name
      t.string :description
      t.string :details
      t.string :category
      t.integer :importance
      t.integer :complexity
      t.integer :duration
      t.integer :version
      t.string :status

      t.timestamps
    end
  end

  def self.down
    drop_table :requirements
  end
end
