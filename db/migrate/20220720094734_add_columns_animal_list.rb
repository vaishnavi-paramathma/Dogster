class AddColumnsAnimal < ActiveRecord::Migration[6.1]
  def change
    add_column :animal_lists, :age, :integer
    add_column :animal_lists, :neutered, :boolean
    add_column :animal_lists, :vaccinated, :boolean
    add_column :animal_lists, :good_with_dogs, :boolean
    add_column :animal_lists, :good_with_cats, :boolean
    add_column :animal_lists, :good_with_kids, :boolean
    add_column :animal_lists, :my_story, :text 
    add_column :animal_lists, :additional_adoption_info, :text   
  end
end
