class AddChangeColumnNullToReviews < ActiveRecord::Migration[7.0]
  def change
    change_column_null(:reviews, :ratings, false)
    change_column_null(:reviews, :user_id, false)
    change_column_null(:reviews, :film_id, false)
  end
end
