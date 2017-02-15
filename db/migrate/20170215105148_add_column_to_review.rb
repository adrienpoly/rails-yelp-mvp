class AddColumnToReview < ActiveRecord::Migration[5.0]
  def change
    add_column :reviews, :rating, :integer
    remove_column :reviews, :stars
  end
end
