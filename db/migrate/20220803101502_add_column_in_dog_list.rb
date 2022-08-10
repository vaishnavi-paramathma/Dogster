# frozen_string_literal: true

class AddColumnInDogList < ActiveRecord::Migration[6.1]
  def change
    add_column :dog_lists, :email, :string
  end
end
