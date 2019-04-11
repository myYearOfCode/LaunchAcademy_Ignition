class AddElementsToParty < ActiveRecord::Migration[5.2]
  def change
    create_table :parties do |p|
      p.string :name, presence: true
      p.text :description, presence: true
      p.string :location, presence: true
    end
  end
end
