class CreateRooms < ActiveRecord::Migration[5.2]
  def change
    create_table :rooms do |t|
      t.string :name
      t.text :description
      t.text :link1
      t.text :link2

      t.timestamps
    end
  end
end
