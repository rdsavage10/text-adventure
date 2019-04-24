class AddLuckToItem < ActiveRecord::Migration[5.2]
  def change
    add_column :items, :luck, :integer
  end
end
