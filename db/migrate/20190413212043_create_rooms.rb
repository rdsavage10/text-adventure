class CreateRooms < ActiveRecord::Migration[5.2]
  def change
    create_table :rooms do |t|
      t.string :name
      t.text :description
      t.text :action_text
      t.text :state
      t.text :path
      t.text :room_items

      t.timestamps
    end
  end
end
