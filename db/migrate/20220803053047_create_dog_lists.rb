# frozen_string_literal: true

class CreateDogLists < ActiveRecord::Migration[6.1]
  def change
    create_table :dog_lists do |t|
      t.string :dog_name
      t.string :breed
      t.string :gender
      t.integer :age
      t.boolean :neutered
      t.boolean :vaccinated
      t.boolean :good_with_dogs
      t.boolean :good_with_cats
      t.boolean :good_with_kids
      t.text :my_story
      t.blob :image
      t.string :owner_name
      t.bigint :ph_no
      t.string :state
      t.string :city
      t.text :additional_adoption_info
      t.timestamps
    end
  end
end
