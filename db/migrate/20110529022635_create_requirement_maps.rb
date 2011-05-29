class CreateRequirementMaps < ActiveRecord::Migration
  def self.up
    create_table :requirement_maps do |t|
      t.integer :requirement_id
      t.integer :test_case_id

      t.timestamps
    end
  end

  def self.down
    drop_table :requirement_maps
  end
end
