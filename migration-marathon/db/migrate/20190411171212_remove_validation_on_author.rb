class RemoveValidationOnAuthor < ActiveRecord::Migration
  def change
    change_column_null :books, :author, true
  end
end
