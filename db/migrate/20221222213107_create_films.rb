class CreateFilms < ActiveRecord::Migration[7.0]
  def change
    create_table :films do |t|
      t.string :title, null: false
      t.text :description, null: false
      t.string :director, null: false
      t.float :rating, null: false, :default => 0 

      t.timestamps
    end
  end
end
