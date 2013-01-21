class Response

	attr_accessor :response, :guess, :temp_secret_code

	MATCH_SYMBOL = "b"
	NO_MATCH_SYMBOL = "x"
	NEAR_MATCH_SYMBOL = "w"

	def initialize(guess, secret_code)
		@guess = guess
		@temp_secret_code = secret_code.dup
		@response = build_response
	end

	def build_response
		@response = []
		for i in 0..(@guess.length-1)
			@response << evaluate_symbol(i)
		end
		@response
	end

	def evaluate_symbol(i)
		if @guess[i] == @temp_secret_code[i]
			@temp_secret_code[i] = "x"
			MATCH_SYMBOL
		elsif @guess[i].split(//) - @temp_secret_code == []
			n = @temp_secret_code.index(@guess[i])
			@temp_secret_code[n] = "x"
			NEAR_MATCH_SYMBOL
		else
			NO_MATCH_SYMBOL
		end
	end

end