class Guess
	
	attr_accessor :guess

	def initialize
		puts "Enter your guess:"
		@guess = gets.chomp
	end
	
end