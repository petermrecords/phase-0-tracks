require_relative "game"

describe Game do
	let(:game) { Game.new }
	# initialization
	it "initializes with the first users word as the hidden word" do
		expect(game.hidden_word).to eq ['t','h','e']
	end
	
	it "sets the hidden word to a bunch of _s equal in length to the hidden word on initialization" do
		expect(game.player_word).to eq ['_','_','_']
	end

	it "sets guessed letters to empty on initialization" do
		expect(game.guessed_letters).to eq []
	end

	it "sets rounds played to 0 on initialization" do
		expect(game.rounds_played).to eq 0
	end

	it "sets max rounds to the lesser of 2 * word length or 26 on initialization" do
		expect(game.max_rounds).to eq 6
	end

	it "sets won to nil on initialization" do
		expect(game.won).to eq nil
	end
	# guesses
	it "changes the hidden word array to the guessed character if given a correct guess" do
		game.guess('t')
		expect(game.player_word).to eq ['t','_','_']
	end

	it "does not change players word if given an incorrect guess" do
		game.guess('c')
		expect(game.player_word).to eq ['_','_','_']
	end

	it "adds the guessed character to the guessed letters array if it hasnt been guessed before" do
		game.guess('t')
		game.guess('c')
		expect(game.guessed_letters).to eq ['t','c']
	end

	it "increments the rounds played by one after a guess" do
		game.guess('t')
		game.guess('c')
		expect(game.rounds_played).to eq 2
	end

	it "exits without incrementing rounds played if a guess is repeated" do
		game.guess('t')
		game.guess('t')
		expect(game.rounds_played).to eq 1
	end

	# win/lose conditions
	it "sets win to true if players word equals hidden word" do
		game.guess('t')
		game.guess('h')
		game.guess('e')
		game.check_win
		expect(game.won).to eq true
	end

	it "sets win to false if rounds played >= max rounds" do
		game.guess('a')
		game.guess('b')
		game.guess('c')
		game.guess('d')
		game.guess('e')
		game.guess('f')
		game.check_win
		expect(game.won).to eq false
	end
end