class SecretCode
	
	attr_accessor :secret_code

	def initialize
		@secret_code = generate_code
	end

	def generate_code
		@secret_code = []
		number_of_symbols_in_code.times { @secret_code << symbols.sample }
		@secret_code
	end
	
	def symbols
		["r", "b", "g", "y", "p", "o"]
	end

	def number_of_symbols_in_code
		5
	end

end