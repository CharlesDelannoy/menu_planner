class CreateIngredients < ActiveRecord::Migration[7.1]
  def change
    create_table :ingredients do |t|
      t.text :name
      t.text :category

      t.timestamps
    end
  end
end
