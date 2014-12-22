class AddColumnToGallery < ActiveRecord::Migration
  def change
  	add_column :galleries, :venue_id, :integer
  end
end
