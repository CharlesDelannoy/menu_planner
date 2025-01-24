class CreateRecipes < ActiveRecord::Migration[7.1]
  def change
    create_table :recipes do |t|
      t.string :title, limit: 200
      t.integer :duration
      t.integer :shares

      t.timestamps
    end
  end
end
