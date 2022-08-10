# frozen_string_literal: true

class AlterTableUserNotnull < ActiveRecord::Migration[6.1]
  def change
    change_column_null :users, :first_name, true
    change_column_null :users, :last_name, true
    change_column_null :users, :email, true
    change_column_null :users, :password_digest, true
    change_column_null :users, :address, true
  end
end
