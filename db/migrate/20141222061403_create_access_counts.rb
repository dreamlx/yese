class CreateAccessCounts < ActiveRecord::Migration
  def change
    create_table :access_counts do |t|
      t.integer :venue_id
      t.integer :user_id

      t.timestamps
    end
  end
end
