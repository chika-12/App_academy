require_relative "room"

class Hotel
  def initialize(str, room_hash)
    @name = str
    @rooms = {}
    room_hash.each do |room_name, capacity|
        @rooms[room_name.to_s] = Room.new(capacity)
    end
  end
  def name
    arr = @name.split(" ")
    new_arr = []
    arr.each do |char|
        new_arr << char.capitalize
    end
    return new_arr.join(" ")
  end
  def rooms
    @rooms
  end
  def room_exists?(name)
    if @rooms.include?(name)
        return true
    else
        return false
    end
  end
  def check_in(person, rm_name)
    val = room_exists?(rm_name)
    if !val
        puts "sorry, room does not exist"
        return
    elsif val
        room = @rooms[rm_name]
        if room.available_space > 0
            room.add_occupant(person)
            puts "check in successful"
        else
            puts "sorry room is full"
        end
    end
  end
  def has_vacancy?
    @rooms.each do |name, val|
        room = @rooms[name]
        if room.available_space > 0
            return true
        end
    end
    false
  end
  def list_rooms
    #new_room = {}
    @rooms.each do |name, val|
        #room = @rooms[name]
        puts "#{name}: #{val.available_space}"
    end
  end
end
