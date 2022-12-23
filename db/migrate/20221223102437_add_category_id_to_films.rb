class AddCategoryIdToFilms < ActiveRecord::Migration[7.0]
  def change
    change_table :films do |t|
      t.string :category_id
    end
  end
end
