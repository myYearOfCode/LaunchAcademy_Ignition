class AddValidations < ActiveRecord::Migration[5.2]
  def change
    change_column_null :parties, :name, false
    change_column_null :parties, :location, false
    change_column_null :parties, :description, false
  end
end
