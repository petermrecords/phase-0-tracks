module Shout
	def yell_angrily(words)
		words << '!!! :('
	end
	def yell_happily(words)
		words.upcase << ' :D'
	end
end

class Cop
	include Shout
end

class Announcer
	include Shout
end

=begin
words = 'Hi there'
p Shout.yell_happily(words)
p Shout.yell_angrily(words)
=end

cop = Cop.new
announcer = Announcer.new

p cop.yell_angrily('Stop skateboarding on the sidewalk you damn kids')
p cop.yell_happily('Thank god, the sidewalks are safe now!')
p announcer.yell_happily('A long fly to center field... and it\'s gone!')
p announcer.yell_angrily('Unsportsmanlike play from the blue team... the ref calls an intentional foul')
