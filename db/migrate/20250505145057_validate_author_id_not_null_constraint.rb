class ValidateAuthorIdNotNullConstraint < ActiveRecord::Migration[7.1]
  def change
    validate_check_constraint :recipes, name: "author_id_not_null"
  end
end
