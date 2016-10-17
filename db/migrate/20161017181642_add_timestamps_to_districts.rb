class AddTimestampsToDistricts < ActiveRecord::Migration[5.0]
  def up
    add_timestamps(:districts)
  end

  def down
    remove_timestamps(:districts)
  end
end
