class GameOver
	attr_accessor :try_again, :turn_number
	MATCH_SYMBOL = "b"
	VICTORY_MESSAGE = "You win!"
	LOSING_MESSAGE = "You suck. Go home."
	TRY_AGAIN_MESSAGE = "Try again."
	TOTAL_TURNS = 12
	# should be WINNING_ARRAY = [MATCH_SYMBOL]*number_of_symbols_in_code
	WINNING_ARRAY = ["b"]*5

	def gameover(response, turn_number)
		@try_again = (response == WINNING_ARRAY) ? win : no_win(turn_number)
	end

	def win
		puts VICTORY_MESSAGE
		false
	end

	def no_win(turn_number)
		# turn_number doesn't increment properly.
		@turn_number = turn_number += 1
		if @turn_number < TOTAL_TURNS
			puts TRY_AGAIN_MESSAGE
			puts @turn_number
			true
		else
			puts LOSING_MESSAGE
			false
		end
	end		
end