class AlterWishlist < ActiveRecord::Migration[6.1]
  def change
    add_column :wishlists, :current_user_id , :bigint
  end
end
