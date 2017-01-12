=begin
	
-input: the spys first & last name

-switch first & last name

-change vowels for the next vowel

-change consonants to next consonant

-output: the aliased name
	
=end

def next_vowel(chars)
	next_vowels = {
		'a' => 'e',
		'e' => 'i',
		'i' => 'o',
		'o' => 'u',
		'u' => 'a'
	}
	output = []
	chars.each do |char|
		char = next_vowels[char] if next_vowels.keys.include?(char)
		output << char
	end
	
	output
end

def next_consonant(chars)
	output = []
	chars.each do |char|
		if !('aeiouzdhnt'.include?(char))
			char.next!
			output << char
		elsif 'zdhnt'.include?(char)
			char.next!.next!
			output << char
		else
			output << char
		end
	end

	output
end

def create_alias(first_name, last_name)
	full_name = [last_name, first_name]
	output = []
	full_name.each do |word|
		word = word.chars
		word = next_consonant(word)
		word = next_vowel(word)
		word = word.join('')
		word.capitalize!
		output << word
	end
	
	output.join(' ')
end

puts 'Welcome to the alias manager.  Type "quit" at any time to quit.'
aliases = []
real_names = []
loop do
	puts 'What is your first name?'
	first_name = gets.chomp.downcase
	break if first_name == 'quit'
	puts 'What is your last name?'
	last_name = gets.chomp.downcase
	break if last_name == 'quit'
	your_alias = create_alias(first_name, last_name)
	real_names << (first_name.capitalize! << ' ' << last_name.capitalize!)
	aliases << your_alias
end

aliases.length.times do |time|
	puts aliases[time] << ' is actually ' << real_names[time] << '.'
end