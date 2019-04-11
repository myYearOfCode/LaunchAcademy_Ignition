class AddInvitations < ActiveRecord::Migration[5.2]
  def change
    create_table :invitations do |i|
      i.belongs_to :party, null: false
      i.belongs_to :friend, null: false
    end
  end
end
