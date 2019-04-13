class GameController < ApplicationController

  def current_room
    @room = Room.find(params[:id])
    @link1 = @room.link1[1]
    @link2 = @room.link2[1]
  end

  def index
    @rooms = Room.all

  end

  def start
  end

end
