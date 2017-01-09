# name
puts 'What is your name?'
your_name = gets.chomp
# age
puts 'What is your age?'
your_age = gets.chomp.to_i
until your_age > 0:
	if your_age <= 0:
		puts 'I didn\'t catch that.  Can you give me a number please?'
		your_age = gets.chomp.to_i
	end
end
# children
puts 'How many children do you have?'
your_children = gets.chomp
until your_children.is_a?(Integer)
	numbers = true
	your_children.chars.each do |char|
		if !('0123456789'.include?(char))
			numbers = false
		end
	end
	if numbers
		your_children = your_children.to_i
	else
		puts 'I didn\'t catch that.  Can you give me a number please?'
		your_children = gets.chomp
	end
end
# decor theme
puts 'What decor theme would you like?'
decor_theme = gets.chomp
# budget
puts 'What is your budget for this job?'
your_budget = gets.chomp
until your_budget.is_a?(Float)
	numbers = true
	your_budget.chars.each do |char|
		if !('01234567890.'.include?(char))
			numbers = false
		end
	end
	if numbers && your_budget.count('.') <= 1
		your_budget = your_budget.to_f
	else
		puts 'I didn\'t catch that.  Can you give me a number please?'
		your_budget = gets.chomp
	end
end
# rooms
puts 'Does your house have more than 5 rooms to decorate?'
your_rooms = gets.chomp
until your_rooms.is_a?(TrueClass) || your_rooms.is_a?(FalseClass)
	case your_rooms.downcase
	when 'yes'
		your_rooms = true
	when 'no'
		your_rooms = false
	else
		puts 'I didn\'t catch that.  Can you give me a yes or no answer please?'
		your_rooms = gets.chomp
	end
end

your_form = {
	name: your_name
	age: your_age
	children: your_children
	decor_theme: decor_theme
	budget: your_budget
	big_house: your_rooms
}

puts 'These are your details:'
puts your_form
