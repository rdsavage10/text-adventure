class GameController < ApplicationController

  def current_room
    @room = Room.find(params[:id])
    @paths = @room.path
  end

  def index
    @rooms = Room.all

  end

  def start
  end

end
