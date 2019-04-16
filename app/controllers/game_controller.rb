class GameController < ApplicationController

  def current_room
    @room = Room.find(params[:id])
    #@room = Room.find_by(name: params[:name])
    @paths = @room.path
    @action_text = @room.action_text
    @chance = []
    @room_items = @room.room_items
    session[:inventory]
    session[:game_vars]

    @room_items.each do |item|
      if session[:inventory][item].nil?
        session[:inventory][item] = false
      end
    end


    @paths.each_with_index do |path, index|
      if path[:chance] != nil
        if path[:chance] >= rand(100)
          @chance[index] = true
        else
          @chance[index] = false
        end
      else
        @chance[index] = "pass"
      end
    end

    def pickup_item

    end


  end

  def index
    @rooms = Room.all

  end

  def start
    session[:inventory] = {"Dagger" => true, "Garden Key" => false }
    session[:game_vars] = {"Balcony Jump": false}
  end

end
