class Game
	attr_reader :hidden_word, :player_word, :guessed_letters, :rounds_played, :max_rounds, :won

	def initialize(word)
		@hidden_word = word.split
		@player_word = ("_"*hidden_word.length).split
		@guessed_letters = []
		@rounds_played = 0
		@max_rounds = (hidden_word.length*2) <= 26 ? hidden_word.length*2 : 26
		@won = nil
	end
end