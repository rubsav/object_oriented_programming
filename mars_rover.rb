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
			@y -= 1
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


	def interpret_instructions
		@instructions.each_char do |c|
			case c
			when "M"
				move
			when"L"
				turn_left
			when"R"
				turn_right
			end
		end
	end

	def read_instructions (instructions)
		@instructions = instructions
		interpret_instructions
	
	end
end

puts "where is rover1 (x, y, direction)?"
rover_position = gets.chomp.upcase

rover1 = Rover.new(rover_position.split[0].to_i,rover_position.split[1].to_i,rover_position.split[2])#turns input into an array
rover1.display_position

puts "Input instructions (M, L, R):"
	instructions = gets.chomp.upcase
rover1.read_instructions(instructions)
rover1.display_position

puts "where is rover2 (x, y, direction)?"
rover_position = gets.chomp.upcase

rover2 = Rover.new(rover_position.split[0].to_i,rover_position.split[1].to_i,rover_position.split[2])
rover2.display_position

puts "Input instructions (M, L, R):"
	instructions = gets.chomp.upcase
rover2.read_instructions(instructions)
rover2.display_position








