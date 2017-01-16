class Santa
	attr_reader :age, :ethnicity, :gender
	attr_accessor :gender
	# INITIALIZE
	def initialize(gender, ethnicity)
		p "Initializing Santa instance..."
		@gender = gender
		@ethnicity = ethnicity
		@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
		@age = 0
	end

	def speak
		p "Ho ho ho!  Haaaappy Holidays!"
	end
	def eat_milk_and_cookies(cookie)
		p "That was a good #{cookie}!"
	end

	def celebrate_birthday
		@age += 1
	end

	def get_mad_at(reindeer)
		r = @reindeer_ranking.index(reindeer)
		@reindeer_ranking << @reindeer_ranking[r]
		@reindeer_ranking.delete_at(r)
		p "I'm mad at #{reindeer}" if @reindeer_ranking[-1] == reindeer
	end
end

example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]
santas = []
100.times { santas << Santa.new(example_genders[rand(example_genders.length)], example_ethnicities[rand(example_ethnicities.length)]) }

p "Hello, we are a group of #{santas.length} santas at Santa Con!"

santas.each do |santa|
	(rand(140)).times do |time|
		santa.celebrate_birthday
	end
	p "I am a #{santa.age} year old #{santa.gender} #{santa.ethnicity} santa."
	santa.get_mad_at("Rudolph")
	# p "Set my gender:"
	# santa.gender = gets.chomp
	santa.speak
	santa.eat_milk_and_cookies('gingerbread man')
end
