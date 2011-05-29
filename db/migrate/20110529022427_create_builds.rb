class CreateBuilds < ActiveRecord::Migration
  def self.up
    create_table :builds do |t|
      t.integer :product_id
      t.integer :release_id
      t.integer :user_id
      t.string :name
      t.datetime :build_date
      t.datetime :prerelease_date
      t.datetime :release_date
      t.string :details
      t.string :status
      t.string :notes

      t.timestamps
    end
  end

  def self.down
    drop_table :builds
  end
end
