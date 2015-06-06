class CreateCities < ActiveRecord::Migration
  def change
    create_table :cities do |t|
      t.string :name
      t.text :description
      t.string :cover_picture
      t.string :logo_picture

      t.timestamps
    end
  end
end
