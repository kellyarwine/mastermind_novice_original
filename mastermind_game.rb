def game_over(return_answer)
	i = 0
	while i < return_answer.length
		if return_answer[i] == "black"
			"nothing"
			game_over = "You win!"
		else
			game_over = "false"
		end
					# puts i
					i += 1
	end
	game_over
end

# def result(return_answer, secret_code, guess)
# 	result = Array.new
# 	print "\n"
# 	print "--------------------------------------------------------"
# 	print "\n"
# 	print "Code to Break: #{code}"
# 	print "\n"
# 	print "Attempted Solution: #{guess}"
# 	print "\n"
# 	print "--------------------------------------------------------"
# 	print "\n"
# 	print return_answer
# 	print "\n"
# 	print "--------------------------------------------------------"
# 	print "\n"
# 	print "\n"
# end

# def guess(input_solution)
# 	guess = Array.new
# 	i = 0
# 	while i < input_solution.length
# 		if input_solution[i] == "r"
# 			guess << "red"
# 		elsif input_solution[i] == "b"
# 			guess << "blue"
# 		elsif input_solution[i] == "g"
# 			guess << "green"
# 		elsif input_solution[i] == "y"
# 			guess << "yellow"
# 		elsif input_solution[i] == "p"
# 			guess << "purple"
# 		elsif input_solution[i] == "o"
# 			guess << "orange"
# 		end
# 		i += 1
# 	end
# 	guess
# end

# def return_answer(guess, secret_code)
# 	i = 0
# 	return_answer = Array.new
# 	while i < guess.length
# 		current_peg_color = guess[i]
# 		if secret_code[i] == guess[i]
# 			return_answer << "black"
# 		elsif secret_code_color_update(current_peg_color, secret_code) > -1
# 			return_answer << "white"
# 		else
# 			return_answer << "[ ]"
# 		end
# 		i += 1
# 	end
# 	return_answer
# end

# def secret_code_color_summary(code)
# 	code_color_summary ||= Hash.new {0}
# 	i = 0
# 	while i < secret_code.length 
# 		current_code_peg_color = secret_code[i]
# 		code_color_summary[current_code_peg_color] += 1
# 		i += 1
# 	end
# 	code_color_summary
# end

# def secret_code_color_update(current_peg_color, secret_code)
# 	if secret_code_color_summary == nil
# 	code_color_summary(code)
# 	end
	
# 	puts "code summary: #{code_color_summary}"

# 	i = 0

# 	code_color_summary[current_peg_color] -= 1
# 	puts "after subtraction: #{code_color_summary}"
# 	code_color_summary[current_peg_color]

end

# colored_pegs = ["red", "blue", "green", "yellow", "purple", "orange"]
# secret_code = [colored_pegs.sample, colored_pegs.sample, colored_pegs.sample, colored_pegs.sample]
# return_answer = "something"

# while game_over(return_answer) == "false"
# 	puts "Enter your guess:"
# 	input_solution = gets.chomp
# 	guess = guess(input_solution)
# 	return_answer = return_answer(guess, secret_code)
# 	puts result(return_answer, secret_code, guess)
# end

puts game_over(return_answer)
