class RemoveSizeFromDistrics < ActiveRecord::Migration[5.0]
  def change
    remove_column :districts, :size
  end
end
