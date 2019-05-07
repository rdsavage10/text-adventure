class Entity < ApplicationRecord
  serialize :attacks, Hash
  serialize :loot, Array
end
