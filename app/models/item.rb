class Item < ApplicationRecord
  belongs_to :room, optional:true
  belongs_to :character, optional: true
end
