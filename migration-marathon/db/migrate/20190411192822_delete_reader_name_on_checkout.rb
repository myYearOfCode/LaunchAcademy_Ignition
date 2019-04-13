class DeleteReaderNameOnCheckout < ActiveRecord::Migration
  def up
    remove_column :checkouts, :name
  end
  def down
    add_column :checkouts, :name, :string, default: "", null: false
  end
end
