puts 'What is this hamster\'s name?'
hamster_name = gets.chomp

puts 'How loud are you normally (rate from 1-10)?'
volume_level = gets.chomp
volume_level.to_i

puts 'What is your fur color?'
fur_color = gets.chomp

puts 'Are you a good candidate for adoption?'
adoption = gets.chomp

puts 'How old are you?'
age = gets.chomp
if age = ''
	age = nil
else
	age.to_i
end