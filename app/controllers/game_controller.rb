class GameController < ApplicationController


  def start
    if guest_user == nil
      guest_user
    end
    @last_room = guest_user[:room_id]
  end

  def current_room
    @room = Room.find(params[:id])            #calls this room
    guest_user[:room_id] = @room[:id]         #saves room to find from main menu
    guest_user.save
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

    @path = []                                #preps variable for use
    @path_text = []                                #preps variable for use
    @paths.each_with_index do |path, index|   #puts each chance value in an array that corresponds to the path index
      if path[:chance] != nil
        if path[:chance] >= rand(100)
          @path_text[index] = path[:text] + " (#{path[:chance]}% chance)"
          @path[index] = path[:main_path]
        else
          @path_text[index] = path[:text] + " (#{path[:chance]}% chance)"
          @path[index] = path[:chance_path]
        end
      else
        @path_text[index] = path[:text]
        @path[index] = path[:main_path]
      end
    end

    @action = [@action_text[:default]]        # Default room text
    if !@room_items.nil?                      # Room text for each default item
      @room_items.each do |item|
        if !@action_text[:pre_pickup].nil? && !@action_text[:pre_pickup][item].nil?
          @action.push(@action_text[:pre_pickup][item])
        end
      end
    end




  end

  def new_game
    guest_user[:room_data] = {}
    guest_user[:item_id] = [0]
    user = guest_user
    user.save
    redirect_to current_room_path(id: params[:id])
  end

  def continue_game
    id = guest_user[:room_id]
    redirect_to current_room_path(id: id)

  end

  def drop                 #Drops item from inventory into room
    id = params[:id].to_i
    item_id = params[:item_id].to_i
    user = guest_user
    #guest_user[:item_id][id].push(item_id)
    if !guest_user[:room_data][id].include? item_id
       guest_user[:item_id].delete(item_id)
       guest_user[:room_data][id].push(item_id)
    end
    user.save
    # guest_user[:room_data][params[:id]] = nil
    redirect_to current_room_path(id: id)
  end

  def pickup
    id = params[:id].to_i
    item_id = params[:item_id].to_i
    user = guest_user
    #guest_user[:item_id][id].push(item_id)
    if !guest_user[:item_id].include? item_id
       guest_user[:item_id].push(item_id)
       guest_user[:room_data][id].delete(item_id)
    end
    user.save
    # guest_user[:room_data][params[:id]] = nil
    redirect_to current_room_path(id: params[:id])             #Takes item from room into inventory
  end

  def index
    @rooms = Room.all              #Begining of room builder GUI
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
