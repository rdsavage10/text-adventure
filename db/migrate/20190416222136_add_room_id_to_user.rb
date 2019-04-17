class AddRoomIdToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :room_id, :text
  end
end
