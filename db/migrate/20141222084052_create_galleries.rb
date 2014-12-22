class CreateGalleries < ActiveRecord::Migration
  def change
    create_table :galleries do |t|
      t.string :image
      t.string :image_type

      t.timestamps
    end
  end
end
