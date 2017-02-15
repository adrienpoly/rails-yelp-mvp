class Review < ApplicationRecord

  # def ratings
  #   [0..5].to_a
  # end

  belongs_to :restaurant
  validates :rating, inclusion: { in: [0, 1, 2, 3, 4, 5], allow_nil: false }
  validates :rating, numericality: {:only_integer => true}
  validates :content, presence: true
  validates :restaurant_id, presence: true
  after_save :update_restaurant_rating



  def update_restaurant_rating
    restaurant = Restaurant.find(restaurant_id)

    restaurant_reviews = Review.all.where(restaurant_id: restaurant_id)

    average = restaurant_reviews.reduce(0) { |acc,review| acc += review.rating }

    restaurant.nb_rating = restaurant_reviews.size

    restaurant.average_rating = average / restaurant_reviews.size.to_f
    restaurant.save
  end
end
