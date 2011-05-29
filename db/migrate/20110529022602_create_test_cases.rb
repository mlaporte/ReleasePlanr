class CreateTestCases < ActiveRecord::Migration
  def self.up
    create_table :test_cases do |t|
      t.integer :test_specification_id
      t.integer :parent_id
      t.boolean :is_parent
      t.integer :user_id
      t.integer :number
      t.string :name
      t.string :description
      t.string :setup
      t.string :procedure
      t.integer :duration
      t.integer :last_run_entry_id

      t.timestamps
    end
  end

  def self.down
    drop_table :test_cases
  end
end
