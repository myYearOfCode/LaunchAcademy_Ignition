class IHateThis < ActiveRecord::Migration[5.2]
  def change
    create_table :recipes do |t|
      t.string :title, unique: true, null: false
      t.text :recipe
    end
  end
end
