class Room < ApplicationRecord
  serialize :path, Array
  serialize :state, Hash
  serialize :action_text, Hash
  serialize :room_items, Array
end
