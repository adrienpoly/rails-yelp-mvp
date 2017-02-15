class AddNbRatingToRestaurant < ActiveRecord::Migration[5.0]
  def change
    add_column :restaurants, :nb_rating, :integer, default: 0
  end
end
