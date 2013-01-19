class SecretCode
	
	attr_accessor :secret_code

	def symbols
		["red", "blue", "green", "yellow", "purple", "orange"]
	end

	def number_of_symbols_in_code
		5
	end

	def generate_code
		@secret_code = []
		number_of_symbols_in_code.times { @secret_code << symbols.sample }
		@secret_code
	end

end