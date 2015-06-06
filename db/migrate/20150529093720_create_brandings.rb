class CreateBrandings < ActiveRecord::Migration
  def change
    create_table :brandings do |t|
      t.string :main_color
      t.string :secondary_color
      t.string :background_color

      t.timestamps
    end
  end
end
