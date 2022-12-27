class RemoveRatingFromFilms < ActiveRecord::Migration[7.0]
  def change
    change_table :films do |t|
      t.remove :rating
    end
  end
end
