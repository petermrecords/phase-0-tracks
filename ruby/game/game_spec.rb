require_relative "game"

describe Game do
	# initialization
	it "initializes with the first users word as the hidden word" do
	end
	
	it "sets the hidden word to a bunch of _s equal in length to the hidden word on initialization" do
	end

	it "sets guessed letters to empty on initialization" do
	end

	it "sets rounds played to 0 on initialization" do
	end

	it "sets max rounds to the lesser of 2 * word length or 26 on initialization" do
	end

	it "sets won to nil on initialization" do
	end
	# guesses
	it "changes the hidden word array to the guessed character if given a correct guess" do
	end

	it "warns user they guessed wrong if given an incorrect guess" do
	end

	it "adds the guessed character to the guessed letters array if it hasnt been guessed before"
	end

	it "increments the rounds played by one" do
	end

	it "exits without incrementing rounds played if a guess is repeated" do
	end

	it "prints the players word at the end of the round" do
	end
	# win/lose conditions
	it "sets win to true if players word equals hidden word" do
	end

	it "sets win to false if rounds played >= max rounds" do
	end
end