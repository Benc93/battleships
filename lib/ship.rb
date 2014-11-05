class Ship 

    def initialize
      @hit = false
      @sunk = false
    end

    def has_length?
      @length > 0
    end

    def length!(length)
      @length = length
    end

    def hit?
      @hit
    end

    def hit!
      @hit = true
    end

    def sink!
      @sunk = true
    end

    def sunk?
      @sunk
    end

    def name(name)
      @name = name
    end


end