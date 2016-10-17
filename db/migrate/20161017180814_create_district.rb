class CreateDistrict < ActiveRecord::Migration[5.0]
  def change
    create_table :districts do |t|
      t.string :name, null: false
      t.string :size
      t.string :representative, null: false
      t.belongs_to :city, null: false
    end
  end
end
