class Review < ApplicationRecord

  def ratings
    [0..5].to_a
  end
  belongs_to :restaurant
  validates :rating, inclusion: { in: [0, 1, 2, 3, 4, 5], allow_nil: false }
  # validates :rating, inclusion: { in: [0..5], allow_nil: false }

  validates :rating, numericality: {:only_integer => true}
  validates :content, presence: true
  validates :restaurant_id, presence: true
end
