class AddDogListToWishlist < ActiveRecord::Migration[6.1]
  def change
    add_reference :wishlists, :dog_list, null: false, foreign_key: true
  end
end
