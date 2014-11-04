class Water
	
	def initialize
		@status = false
	end



	def hit
		true
		@status = true
	end

	def hit?
		@status
	end
end