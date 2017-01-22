class Game
	attr_reader :hidden_word, :player_word, :guessed_letters, :rounds_played, :max_rounds, :won

	def initialize(word)
		@hidden_word = word.chars
		@player_word = ("_"*hidden_word.length).chars
		@guessed_letters = []
		@rounds_played = 0
		@max_rounds = (hidden_word.length*2) <= 26 ? hidden_word.length*2 : 26
		@won = nil
	end

	def guess(letter)
		if @guessed_letters.include?(letter)
			puts 'You already guessed that one!'
		else
			if @hidden_word.include?(letter)
				@player_word.length.times do |time|
					player_word[time] = letter if @hidden_word[time] == letter
				end
			else
				puts 'Wrong!'
			end
			@guessed_letters << letter
			@rounds_played += 1
		end
		puts @player_word.join('')
	end

	def check_win
		@won = true if @player_word == @hidden_word
		@won = false if @rounds_played >= max_rounds
	end
end

puts "Welcome to hangman."
puts "PLAYER 1: Enter the word to be guessed."
word = gets.chomp.downcase
game = Game.new(word)
puts "PLAYER 2: Enter your guesses one at a time.  You have #{game.max_rounds} tries.  Repeated guesses don't count against you."
puts "The word, with any characters you've guessed already revealed, will display after every round."
loop do
	break if game.won == true || game.won == false
	puts "Enter your guess:"
	letter = gets.chomp.downcase[0]
	game.guess(letter)
	game.check_win
end
puts "Congratulations!  You won bigly!" if game.won
puts "You lose! SAD! A DISASTER!" if !game.won