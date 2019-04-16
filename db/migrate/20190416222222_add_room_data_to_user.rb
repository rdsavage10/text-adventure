class AddRoomDataToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :Room_data, :text
  end
end
