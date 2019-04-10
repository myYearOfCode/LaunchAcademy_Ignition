class Song < ActiveRecord::Base
  validates :year, numericality: true, length: {in: 2..4}
end
