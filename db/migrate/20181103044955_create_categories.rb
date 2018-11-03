class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.string :description, limit: 60 # aqui é possível determinar o limite.

      t.timestamps null: false
    end
  end
end
