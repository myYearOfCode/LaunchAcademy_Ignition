class Party < ActiveRecord::Base
  validates :name, presence: true
  validates :location, presence: true
  validates :description, presence: true

  has_many :invitations
  has_many :friends, through: :invitations
end
