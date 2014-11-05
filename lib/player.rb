class Player

	attr_reader :trackingboard, :targetboard

	def initialize(tracking, target)
		@trackingboard = tracking
		@targetboard = target
	end

	def trackingboard?
		!@trackingboard.nil?
	end

	def targetboard?
		!@targetboard.nil?
	end

	def place!(ship)
		@targetboard.place(ship)
		#true
	end

end