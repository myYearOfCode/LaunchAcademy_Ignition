class Recipe < ActiveRecord::Base
  validates :title, uniqueness: true
  validates :title, format: { with: /brussels sprouts/}
end
