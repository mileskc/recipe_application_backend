class AddDirectionsToRecipe < ActiveRecord::Migration[6.0]
  def change
    add_column :recipes, :directions, :text, array:true, default: []
  end
end
