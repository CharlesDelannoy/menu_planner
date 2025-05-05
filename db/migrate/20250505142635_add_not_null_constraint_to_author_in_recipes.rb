class AddNotNullConstraintToAuthorInRecipes < ActiveRecord::Migration[7.1]
  def change
    add_check_constraint :recipes, "author_id IS NOT NULL", name: "author_id_not_null", validate: false
  end
end
