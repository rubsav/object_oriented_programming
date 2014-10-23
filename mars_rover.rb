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
end












