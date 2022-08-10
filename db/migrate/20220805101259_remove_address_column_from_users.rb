# frozen_string_literal: true

class RemoveAddressColumnFromUsers < ActiveRecord::Migration[6.1]
  def change
    remove_column :users, :address
  end
end
