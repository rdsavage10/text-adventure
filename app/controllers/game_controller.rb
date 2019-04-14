class GameController < ApplicationController

  def current_room
    @room = Room.find(params[:id])
    @paths = @room.path
    @chance = []

    @paths.each_with_index do |path, index|
      if path.length > 2
        if path[2] >= rand(100)
          @chance[index] = true
        else
          @chance[index] = false
        end
      else
        @chance[index] = "fuck"
      end
    end
  end

  def index
    @rooms = Room.all

  end

  def start
  end

end
