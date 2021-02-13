# Write your code here.
require "pry"

def badge_maker(name)
    "Hello, my name is #{name}."
end


def batch_badge_creator(attendees)
    
    badges_list = [] 
    
    attendees.each do |name|    
        badges_list << badge_maker(name) #"Hello, my name is #{name}." 
    end
    badges_list
end 

def assign_rooms(attendees)
    room_assignments = []
    
    counter = 1
    attendees.each do |name|
        room_assignments << "Hello, #{name}! You'll be assigned to room #{counter}!"
        counter += 1
    end
    room_assignments
end

def printer(attendees)
    batch_badge_creator(attendees).each do |name|  #This set up shows, okay, I'm calling a method, it returns an array, I'm not going to start iterating over it, AND I'm going to assign a parameter name of "name" for each element that is in the array.
        puts name  #It is that block parameter name, standing in for each string, that you need to be outputting with puts.
                #Each iteration here is it's own separate thing. name is a wholly contained string on it's own and not going to be part of another string that we're adding it inside of.
    end
    assign_rooms(attendees).each do |room|
        puts room
    end
end

