class CreateEntities < ActiveRecord::Migration[5.2]
  def change
    create_table :entities do |t|
      t.string :name
      t.text :description
      t.integer :maxHP
      t.integer :maxAP
      t.text :attacks
      t.text :loot

      t.timestamps
    end
  end
end
