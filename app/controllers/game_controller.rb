class GameController < ApplicationController

  def current_room
    @room = Room.find(params[:id])            #calls this room
    @items = Item.all                         #displays attributes for all possible items
    @inventory = guest_user[:item_id]         #allows reading of stored inventory between rooms
    @paths = @room.path                       #shortcut to this rooms exits
    @action_text = @room.action_text          #WIP
    @default_room_items = @room.room_items    #set to default room state
    @room_data = {}                           #preps for use later
    if @default_room_items != nil             #if the room has no items skip method
      room_history
    end
    @room_data = guest_user[:room_data]
    @room_items = @room_data[@room[:id]]

    @chance = []                        #preps variable for use
    @paths.each_with_index do |path, index|  #puts each chance value in an array that corresponds to the path index
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


  end

  def pickup
    id = params[:id].to_i
    item_id = params[:item_id].to_i
    item_id -= 1
    user = guest_user
    #guest_user[:item_id][id].push(item_id)
    if !guest_user[:item_id].include? item_id
       guest_user[:item_id].push(item_id)
       guest_user[:room_data][id].delete(item_id)
    end
    user.save
    # guest_user[:room_data][params[:id]] = nil
    redirect_to current_room_path(id: params[:id])
  end

  def index
    @rooms = Room.all

  end

  def start
    if guest_user == nil
      guest_user
    end
  end


  private

  def room_history #saves the room default items to mutate later
      if !@default_room_items.nil? && ( guest_user[:room_data].nil? || guest_user[:room_data][@room.id].nil?)
        user = guest_user
        guest_user[:room_data][@room.id] = @default_room_items
        user.save
      end
  end



end
