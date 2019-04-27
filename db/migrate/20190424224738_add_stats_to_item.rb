class AddStatsToItem < ActiveRecord::Migration[5.2]
  def change
    add_column :items, :stats, :text
  end
end
