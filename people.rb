class Person # 4 parent class that contains attribute name
	def initialize(name)
		@name = name
	end
	def greeting
		puts "Hi, my name is #{name}" #5 common greeting method
	end
end

class Student < Person #2
	def learn
		puts "I get it!"
	end
end
class Instructor < Person #3
	def teach
		puts "Everything in Ruby is an Object"
	end
end

Chris = Instructor.new("Chris")#6
Cristina = Student.new("Cristina")#7

Chris.teach #8
Cristina.learn #8
Cristina.teach 
#the student instance cannot call the teach method because they are not part of the same class