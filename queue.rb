class Queue
    attr_reader :orders
    
    def initialize
        @orders = []
    end

    def add_order!(order)
        @orders << order
    end    

    def order_ready!
        @orders.delete_at(0)
    end

end

orders = Queue.new

orders.add_order!("Rissoto")
orders.add_order!("Pasta")
orders.add_order!("Carpacio")

puts orders.orders

orders.order_ready!

p "============================"
puts orders.orders

orders.order_ready!

p "============================"
puts orders.orders