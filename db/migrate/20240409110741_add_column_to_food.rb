class AddColumnToFood < ActiveRecord::Migration[6.1]
  def change
    add_column :foods, :user_id, :integer, null: false
    add_column :foods, :genre_id, :integer, null: false
  end
end
