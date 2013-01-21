path = File.join(File.dirname(__FILE__), 'mastermind', '**', '*')
Dir[path].each do |f|
  require f
end

class Mastermind
	attr_accessor :guess, :guess_string

	def initialize
		puts "Enter your guess:"
		@guess_string = gets.chomp
		@guess = convert_guess_to_array(@guess_string)
	end

	def convert_guess_to_array(guess)
		guess.split(//)
	end
end

try_again = true
@turn_number = 1

sc = SecretCode.new

while try_again == true
	play = Mastermind.new
	r = Response.new(play.guess, sc.secret_code)
	r.response.each { |symbol| print symbol }
	print "\n"
	try_again = GameOver.new.gameover(r.response, @turn_number)
end