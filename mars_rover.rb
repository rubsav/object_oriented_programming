class Rover
	attr_accessor :x, :y, :direction

	def initialize (x, y, direction)
		@x = x
		@y = y
		@direction = direction
	end

	def display_position
		puts "#{@x}, #{@y}, #{@direction}"
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

rover1 = Rover.new(0,0,"N")
rover1.display_position
rover1.turn_left
rover1.display_position











