
@player_lives = {
	player_1: 3,
	player_2: 3
}
current_turn = 0

@players = [:player_1, :player_2]

# #who's turn is it?' 
# puts "It's " + player[current_turn] + "'s turn."


def generate_numbers
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
		puts "bad news for #{@current_player_name}"
		#@current_player_name = @player_lives[@current_player_name]
		@player_lives[@current_player_name] -= 1
	end
end

def display_score
 puts "#{@player_lives}"
end



while @player_lives[:player_1] > 0 && @player_lives[:player_2] > 0
	@current_player_name = @players[current_turn]
	#shit that actually runs
	generate_question
	verify_answer
	display_score
	current_turn = (current_turn + 1) % 2
end

puts "Game over."
puts "Here's the final score: #{@player_lives}"












# @player_1 {lives: 3}
# @player_2 {lives:}

# def generate_question(first_num, second_num)

# 	puts "What is #{first_num} + #{second_num}?"
# 	correct_answer = first_num + second_num
# 	player_response = gets.chomp.to_i

# 	if player_response == correct_answer
# 		puts "You're correct!"
# 	else
# 		puts "You are wrong."
# 	end
# end

# def prompt_for_answer
# 	puts "What is #{first_num} + #{second_num}?"

# puts generate_question(rand(1..20), rand(1..20)) 
