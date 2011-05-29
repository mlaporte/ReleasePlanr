class CreateTestPlans < ActiveRecord::Migration
  def self.up
    create_table :test_plans do |t|
      t.integer :build_id
      t.integer :user_id
      t.string :description
      t.datetime :start_date
      t.datetime :end_date
      t.string :status

      t.timestamps
    end
  end

  def self.down
    drop_table :test_plans
  end
end
