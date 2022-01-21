class Taxi

    attr_reader :riders

    def initialize(license_plate)
      @license_plate = license_plate
      @available = true
      @riders = []
    end

    def available?
        @available
    end

    def occupy!
        @available = false
    end

    def add_rider(name)
        @riders << name
    end

    
end

taxi1 = Taxi.new("1234")

p taxi1.available?

taxi1.occupy!

taxi1.add_rider("Jane")
taxi1.add_rider("Mellisa")

p taxi1.available?

p taxi1.riders

