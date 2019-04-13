class Book < ActiveRecord::Base
  has_many :checkouts
  has_many :categorizations
  has_many :categories, through: :categorizations

  validates :title, presence: true
  validates :rating, numericality: { less_than_or_equal_to: 100, greater_than_or_equal_to: 0}, allow_nil: true
end
