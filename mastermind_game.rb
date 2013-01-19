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

def result(return_answer, code, translated_input_solution)
	result = Array.new
	print "\n"
	print "--------------------------------------------------------"
	print "\n"
	print "Code to Break: #{code}"
	print "\n"
	print "Attempted Solution: #{translated_input_solution}"
	print "\n"
	print "--------------------------------------------------------"
	print "\n"
	print return_answer
	print "\n"
	print "--------------------------------------------------------"
	print "\n"
	print "\n"
end

def translated_input_solution(input_solution)
	translated_input_solution = Array.new
	i = 0
	while i < input_solution.length
		if input_solution[i] == "r"
			translated_input_solution << "red"
		elsif input_solution[i] == "b"
			translated_input_solution << "blue"
		elsif input_solution[i] == "g"
			translated_input_solution << "green"
		elsif input_solution[i] == "y"
			translated_input_solution << "yellow"
		elsif input_solution[i] == "p"
			translated_input_solution << "purple"
		elsif input_solution[i] == "o"
			translated_input_solution << "orange"
		end
		i += 1
	end
	translated_input_solution
end

def return_answer(translated_input_solution, code)
	i = 0
	return_answer = Array.new
	while i < translated_input_solution.length
		current_peg_color = translated_input_solution[i]
		if code[i] == translated_input_solution[i]
			return_answer << "black"
		elsif code_color_update(current_peg_color, code) > -1
			return_answer << "white"
		else
			return_answer << "[ ]"
		end
		i += 1
	end
	return_answer
end

def code_color_summary(code)
	code_color_summary ||= Hash.new {0}
	i = 0
	while i < code.length 
		current_code_peg_color = code[i]
		code_color_summary[current_code_peg_color] += 1
		i += 1
	end
	code_color_summary
end

def code_color_update(current_peg_color, code)
	if code_color_summary == nil
	code_color_summary(code)
	end
	
	puts "code summary: #{code_color_summary}"

	i = 0

	code_color_summary[current_peg_color] -= 1
	puts "after subtraction: #{code_color_summary}"
	code_color_summary[current_peg_color]

end

# colored_pegs = ["red", "blue", "green", "yellow", "purple", "orange"]
# code = [colored_pegs.sample, colored_pegs.sample, colored_pegs.sample, colored_pegs.sample]
# return_answer = "something"

while game_over(return_answer) == "false"
	puts "Enter your guess:"
	input_solution = gets.chomp
	translated_input_solution = translated_input_solution(input_solution)
	return_answer = return_answer(translated_input_solution, code)
	puts result(return_answer, code, translated_input_solution)
end

puts game_over(return_answer)