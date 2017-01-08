=begin

ENCRYPT

-get the string input
-get the string length
-set up a counter variable = 0
-while the counter is less than the length of the input:
	-if the character at [counter] is a letter: switch it for the next letter in the alphabet
	-if not: dont do anything
	-add 1 to the counter
-return the encrypted string

DECRYPT

-get the encrypted string input
-get the encrypted string length
-set up a counter variable = 0
-set up a string with all letters in the alphabet
-while the counter is less than the length of the input:
	-if the character at [counter] is a letter: switch it for the previous letter in the alphabet
		-get: alphabet.index(letter)-1 is index of the letter to replace with in the alphabet string
		-then: alphabet[^] => replaces the letter in the input
	-if not: dont do anything
	-add 1 to the counter
-return the decrypted string

=end

def encrypt(string)
	counter = 0
	while counter < string.length
		if string[counter].lower in 'abcdefghijklmnopqrstuvwxy'
			string[counter] = string[time].next!
		elsif string[counter] == 'z'
			string[counter] = 'a'
		end
		counter += 1
	end
	return string
end

puts "What would you like to encrypt?"
input = gets.chomp

puts encrypt(input)