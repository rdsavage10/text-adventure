class AddRoomDataToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :room_data, :text
  end
end
