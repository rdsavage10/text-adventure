class AddRoomIdToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :Room_ID, :text
  end
end
