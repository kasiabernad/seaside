class AddCityIdToBranding < ActiveRecord::Migration
  def self.up
    add_column :brandings, :city_id, :integer
  end
  def self.down
    remove_column :brandings, :city_id
  end
end
