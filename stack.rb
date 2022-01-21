class Stack
    attr_reader :destinations
    
    def initialize
        @destinations = []
    end

    def add_destination(destination)
        @destinations << destination
    end

    def visited_destination
        @destinations.delete_at(-1)
    end
end

itinerary = Stack.new

itinerary.add_destination("Spain")
itinerary.add_destination("Italy")
itinerary.add_destination("Costa Rica")

puts itinerary.destinations

itinerary.visited_destination

p "============================"
puts itinerary.destinations

itinerary.visited_destination

p "============================"
puts itinerary.destinations
