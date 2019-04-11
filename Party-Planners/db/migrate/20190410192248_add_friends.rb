class AddFriends < ActiveRecord::Migration[5.2]
  def change
    create_table :friends do |f|
      f.string :first_name, presence: true
      f.string :last_name, presence: true

      f.timestamps null: false
    end
  end
end
