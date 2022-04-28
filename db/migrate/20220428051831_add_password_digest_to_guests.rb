class AddPasswordDigestToGuests < ActiveRecord::Migration[6.1]
  def change
    add_column :guests, :password_digest, :string
  end
end
