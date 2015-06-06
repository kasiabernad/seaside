class CreateAttractions < ActiveRecord::Migration
  def change
    create_table :attractions do |t|
      t.string :name
      t.text :description
      t.string :address
      t.float :latitude
      t.float :longitude
      t.string :website
      t.string :phone
      t.boolean :promoted
      t.integer :city_id

      t.timestamps
    end
  end
end
