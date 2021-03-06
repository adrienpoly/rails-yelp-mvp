class CreateReviews < ActiveRecord::Migration[5.0]
  def change
    create_table :reviews do |t|
      t.text :content
      t.integer :stars
      t.references :restaurant, foreign_key: true, index: true

      t.timestamps
    end
  end
end
