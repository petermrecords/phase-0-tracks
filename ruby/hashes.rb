# name
def get_name
	puts 'What is your name?'
	your_name = gets.chomp
	return your_name
end
	# age
def get_age
	puts 'What is your age?'
	your_age = gets.chomp.to_i
	until your_age > 0
		puts 'I didn\'t catch that.  Can you give me a number please?'
		your_age = gets.chomp.to_i
	end
	return your_age
end
# children
def get_children
	puts 'How many children do you have?'
	your_children = gets.chomp.to_i
	until your_children >= 0
		puts 'I didn\'t catch that.  Can you give me a number please?'
		your_age = gets.chomp.to_i
	end
	return your_children
end
# decor theme
def get_decor
	puts 'What decor theme would you like?'
	decor_theme = gets.chomp
	return decor_theme
end
# budget
def get_budget
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
	return your_budget
end
# rooms
def get_big_house
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
	return your_rooms
end
# create the hash
your_name = get_name
your_age = get_age
your_children = get_children
decor_theme = get_decor
your_budget = get_budget
your_rooms = get_big_house

your_form = {
	name: your_name,
	age: your_age,
	children: your_children,
	decor_theme: decor_theme,
	budget: your_budget,
	big_house: your_rooms
}
# print the hash
puts your_form
# update
puts 'Would you like to change anything before submitting?  Type \'none\' if not.'
change = gets.chomp
case change.downcase.sub(' ','_').to_sym
when :name
	your_form[:name] = get_name
when :age
	your_form[:age] = get_age
when :children
	your_form[:children] = get_children
when :decor_theme
	your_form[:decor_theme] = get_decor
when :budget
	your_form[:budget] = get_budget
when :big_house
	your_form[:big_house] = get_big_house
else
	if !(change == 'none')
		puts 'Sorry, you messed that up!'
	end
end

puts your_form
