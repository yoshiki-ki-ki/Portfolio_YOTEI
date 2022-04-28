class RemoveColumnsInGuests < ActiveRecord::Migration[6.1]
  def change
    remove_column :guests, :password, :string
  end
end
