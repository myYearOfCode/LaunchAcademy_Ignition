class CreateRegistrations < ActiveRecord::Migration
  def change
    create_table :registrations do |t|
      t.belongs_to :course, null: false
      t.belongs_to :student, null: false

      t.timestamps null: false
    end
  end
end
