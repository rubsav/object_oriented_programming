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
			@y += 1
		elsif (@direction == "S")
			@x -= 1
		elsif (@direction == "W")
			@x -= 1
		else (@direction == "E")
			@x += 1
		end
	end

	def turn_left
		if (@direction == "N")  
			@direction = "W"
		elsif (@direction == "W")  
			@direction = "S"
		elsif (@direction == "S") 
			@direction = "E"
		else (@direction == "E")
			@direction = "N"
		end
	end
	
	def turn_right
		if (@direction == "N")  
			@direction = "E"
		elsif (@direction == "E")  
			@direction = "S"
		elsif (@direction == "S") 
			@direction = "W"
		else (@direction == "W") 
			@direction = "N"
		end
	end
end

	












