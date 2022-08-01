class CreateAnimals < ActiveRecord::Migration[6.1]
  def change
    create_table :animal_lists do |t|
      t.string :dog_name
      t.string :breed
      t.string :gender

      t.timestamps
    end
  end
end
