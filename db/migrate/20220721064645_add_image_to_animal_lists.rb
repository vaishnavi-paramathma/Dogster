class AddImageToAnimals < ActiveRecord::Migration[6.1]
  def change
    add_column :animal_lists, :image, :blob
  end
end
