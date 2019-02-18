class CreateRecipeSteps < ActiveRecord::Migration[5.2]
  def change
    create_table :recipe_steps do |t|
      t.string :title
      t.string :description
      t.string :order
      t.references :recipe, foreign_key: true

      t.timestamps
    end
  end
end
