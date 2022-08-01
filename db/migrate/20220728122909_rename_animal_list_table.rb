class RenameAnimalTable < ActiveRecord::Migration[6.1]
  def change
    rename_table :animal_lists, :animals
  end
end
