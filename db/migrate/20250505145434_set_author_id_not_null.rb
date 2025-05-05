class SetAuthorIdNotNull < ActiveRecord::Migration[7.1]
  def change
    change_column_null :recipes, :author_id, false
  end
end
