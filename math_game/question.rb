class Question


def generate_numbers
	# @first_num = rand(1..20)
	# @second_num = rand(1..20)
	[rand(1..20), rand(1..20)]
end


def generate_question
	first_num, second_num = generate_numbers
	@correct_answer = first_num + second_num
	puts "What is #{first_num} + #{second_num}?"
	@player_response = gets.chomp.to_i
	# verify_answer(first_num, second_num, @player_response)
end


def verify_answer#(first_num, second_num, player_response)
	if @player_response == @correct_answer
		puts "You are correct!"
	else
		puts "You are wrong."
		@players[:player_1] -= 1
	end
	puts "Here is the updated score #{@players}."
end


while @players[:player_1] > 0 || @players[:player_2] > 0 
	#shit that actually runs
	generate_question
	verify_answer
end

puts "Game over."
puts "Here's the final score: #{@players}"
