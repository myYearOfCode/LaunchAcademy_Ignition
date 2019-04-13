class UpdateCheckout < ActiveRecord::Migration
  def change
    add_reference :checkouts, :reader
  end
end
