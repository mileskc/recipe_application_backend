class RemoveDirectionsFromRecipes < ActiveRecord::Migration[6.0]
  def change

    remove_column :recipes, :directions, :text
  end
end
