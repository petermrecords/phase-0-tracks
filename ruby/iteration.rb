def color  
    puts "I like the color."
    yield
end

color { |color| puts "I like the color." }

array = ["green", "pink", "blue", "white"]

hash = {
    :Ted => 27, 
    :Bob => 20, 
    :Mary => 16,
    :Stacy => 40
}

array.each { |i| puts i }

array.map! { |i| puts i.upcase }

hash.each { |k, v| puts k, v }




numbers = [1,2,3,4,5,6,7,8,9]

numbers2 = numbers.take_while { |x| x < 7 }

numbers3 = numbers2.drop_while { |x| x < 4 }

numbers.delete_if { |x| x < 3 }
numbers.keep_if { |x| x < 7 }

puts numbers
puts '---'
puts numbers2
puts "---"
puts numbers3

name_ages = {
	bob: 32,
	joe: 33,
	will: 32,
	sarah: 40
}

name_ages2 = name_ages.keep_if { |k,v| v >= 33}
name_ages3 = name_ages.select { |k,v| k == :sarah }

name_ages.delete_if { |k,v| v < 33 }

puts name_ages
puts name_ages2
puts name_ages3