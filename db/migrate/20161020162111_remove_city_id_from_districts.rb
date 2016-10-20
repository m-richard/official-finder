class RemoveCityIdFromDistricts < ActiveRecord::Migration[5.0]
  def self.up
    remove_column :districts, :city_id
  end
end
