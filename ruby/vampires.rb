puts 'How many employees are we testing?'
employees = gets.chomp
begin
	employees = employees.to_i
rescue
	puts
end


employees.times do |time|

	puts 'What is your name?'
	your_name = gets.chomp

	puts 'How old are you?'
		your_age = gets.chomp
		your_age.to_i
	end

	puts 'What year were you born?'
	begin
		birth_year = gets.chomp
		birth_year = birth_year.to_i
	rescue
		puts 'I didn\'t catch that.  Can you give me a number please?  What year were you born?'
		retry
	end

	puts 'Our company cafeteria serves garlic bread.  Should we order some for you?'
	garlic_bread = gets.chomp
	until (garlic_bread.is_a?(TrueClass) || garlic_bread.is_a?(FalseClass))
		case garlic_bread.downcase
			when 'yes'
				garlic_bread = true
			when 'no'
				garlic_bread = false
			else
				puts 'I didn\'t catch that.  Can you give me a yes or no answer?  Do you want garlic bread or not?'
				garlic_bread = gets.chomp
		end
	end

	puts 'Would you like to enroll in the company\'s health insurance?'
	health_insurance = gets.chomp
	until (health_insurance.is_a?(TrueClass) || health_insurance.is_a?(FalseClass))
		case health_insurance.downcase
			when 'yes'
				health_insurance = true
			when 'no'
				health_insurance = false
			else
				puts 'I didn\'t catch that.  Can you give me a yes or no answer?  Do you want health insurance or not?'
				health_insurance = gets.chomp
		end
	end

	puts 'Do you have any allergies?  Type "done" when you are finished listing them.'
	allergies = gets.chomp
	until allergies.downcase == 'sunshine' || allergies.downcase == 'done'
		puts 'Anotha one?'
		allergies = gets.chomp
	end
	
	if allergies == 'sunshine'
		result = 'Probably a vampire.'
	else
		if your_age == 2016-birth_year
			if garlic_bread || health_insurance
				result = 'Probably not a vampire.'
			else
				result = 'Results inconclusive.'
			end
		else
			if garlic_bread && health_insurance
				result = 'Results inconclusive.'
			elsif garlic_bread || health_insurance
				result = 'Probably a vampire.'
			else
				result = 'Almost definitely a vampire.'
			end
		end

		if your_name == 'Drake Cula' || your_name == 'Tu Fang'
			result = 'Definitely a vampire.'
		end
	end

	puts result
end

puts 'Actually, never mind! What do these questions have to do with anything? Let\'s all be friends.'