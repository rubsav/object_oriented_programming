class Person # 4 parent class that contains attribute name
	def initialize(name)
		@name = name
	end
	def greeting
		puts "Hi, my name is #{name}" #5 common greeting method
	end
end

class Student < Person 
	def learn
		puts "I get it!"
	end
end
class Instructor < Person
	def teach
		puts "Everything in Ruby is an Object"
	end
end

Chris = Instructor.new("Chris")#6
Cristina = Student.new("Cristina")#7