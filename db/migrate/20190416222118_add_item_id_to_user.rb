class AddItemIdToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :Item_ID, :text
  end
end
