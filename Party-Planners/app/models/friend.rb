class Friend < ActiveRecord::Base
  validates :first_name, presence: true
  validates :last_name, presence: true

  has_many :invitations
  has_many :parties, through: :invitations
end
