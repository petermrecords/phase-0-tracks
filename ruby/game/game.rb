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
		@player_word.join('')
	end
end