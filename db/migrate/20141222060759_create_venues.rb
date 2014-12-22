class CreateVenues < ActiveRecord::Migration
  def change
    create_table :venues do |t|
      t.string :title
      t.string :address
      t.string :location
      t.text :descripition
      t.boolean :parking
      t.boolean :eating
      t.boolean :visa
      t.string :other
      t.string :tel
      t.string :business_hours
      t.decimal  :price

      t.timestamps
    end
  end
end
