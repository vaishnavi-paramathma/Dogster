# frozen_string_literal: true

class AddCascade2 < ActiveRecord::Migration[6.1]
  def change
    remove_foreign_key :wishlists, :dog_lists
    add_foreign_key :wishlists, :dog_lists, on_delete: :cascade, on_update: :cascade
  end
end
