class Restaurant < ApplicationRecord
  @categories = ["chinese", "italian", "japanese", "french", "belgian"]
  def categories
    ["chinese", "italian", "japanese", "french", "belgian"]
  end
  has_many :reviews, dependent: :destroy
  validates :category, inclusion: { in: @categories, allow_nil: false }
  validates :name, presence: true
  validates :address, presence: true


end
