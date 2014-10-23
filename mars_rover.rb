class Rover
	attr_accessor :x, :y, :direction

	def initilaize (x, y, direction)
		@x = x
		@y = y
		@direction = direction
	end

	def diplay_position
		puts "#{@x}, #{@y}, #{@direction}"
	end

	def read_instruction 
	puts "Input instructions (M, L, R):"
	@instructions = get.chomp
	end

	def move
		if (@direction == "N") 
			@y = y + 1
		elsif (@direction == "S")
			@x = y - 1
		elsif (@direction == "W")
			@x = x - 1
		else (@direction == "E")
			@x = x + 1
		end
	end		
end

	












