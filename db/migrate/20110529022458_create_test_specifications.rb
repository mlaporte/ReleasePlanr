class CreateTestSpecifications < ActiveRecord::Migration
  def self.up
    create_table :test_specifications do |t|
      t.integer :product_id
      t.integer :user_id
      t.string :name
      t.string :description
      t.integer :version
      t.string :status

      t.timestamps
    end
  end

  def self.down
    drop_table :test_specifications
  end
end
