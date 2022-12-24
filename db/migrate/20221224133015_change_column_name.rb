class ChangeColumnName < ActiveRecord::Migration[7.0]
  def change
    change_table :reviews do |t|
      t.rename :rating, :ratings
    end
  end
end
