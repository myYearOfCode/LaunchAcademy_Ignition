class Invitation < ActiveRecord::Base
  belongs_to :friend
  belongs_to :party
end
