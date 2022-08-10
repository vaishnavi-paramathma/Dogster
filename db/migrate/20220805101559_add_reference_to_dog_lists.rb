# frozen_string_literal: true

class AddReferenceToDogLists < ActiveRecord::Migration[6.1]
  def change
    add_reference :dog_lists, :users, foreign_key: true
    remove_column :dog_lists, :owner_name
    remove_column :dog_lists, :email
  end
end
