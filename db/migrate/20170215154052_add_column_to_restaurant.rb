class AddColumnToRestaurant < ActiveRecord::Migration[5.0]
  def change
    add_column :restaurants, :average_rating, :float, default: 0
  end
end
