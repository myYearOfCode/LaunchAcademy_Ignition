class CreateCheckouts < ActiveRecord::Migration
  def change
    create_table :checkouts do |t|
      t.string :name, null: false
      t.belongs_to :book, null: false

      t.timestamps null: false
    end
  end
end
