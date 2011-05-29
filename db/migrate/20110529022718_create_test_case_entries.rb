class CreateTestCaseEntries < ActiveRecord::Migration
  def self.up
    create_table :test_case_entries do |t|
      t.integer :test_plan_id
      t.integer :test_case_id
      t.integer :user_id
      t.datetime :start_date
      t.datetime :end_date
      t.string :status
      t.string :notes

      t.timestamps
    end
  end

  def self.down
    drop_table :test_case_entries
  end
end
