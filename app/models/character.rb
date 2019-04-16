class Character < ApplicationRecord
  belongs_to :user
  has_many :items, through :item_id
end
