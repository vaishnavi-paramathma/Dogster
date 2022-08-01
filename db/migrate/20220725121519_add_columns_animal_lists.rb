class AddColumnsAnimals < ActiveRecord::Migration[6.1]
  def change
    add_column :animal_lists, :owner_name, :string
    add_column :animal_lists, :ph_no, :bigint
    add_column :animal_lists, :state, :string
    add_column :animal_lists, :city, :string
    add_column :animal_lists, :additional_info, :text
  end
end
