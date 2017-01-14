def simple_search(array, integer)
	index = nil
	array.length.times do |time|
		index = time if array[time] == integer
	end
	return index
end

def fibonacci_numbers(number_times)
	fibonacci_numbers = [0,1]
	(number_times-2).times do |time|
		fibonacci_numbers << (fibonacci_numbers[time] + fibonacci_numbers[time+1])
	end
	return fibonacci_numbers[-1]
end

=begin

for i ← 1 to length(A)
    j ← i
    while j > 0 and A[j-1] > A[j]
        swap A[j] and A[j-1]
        j ← j - 1
    end while
end for

for i = 1 to length(A)
    x = A[i]
    j = i - 1
    while j >= 0 and A[j] > x
        A[j+1] = A[j]
        j = j - 1
    end while
    A[j+1] = x
 end for

=end

def insertion_sort(a)
	a.length.times do |i|
		x = a[i]
		j = i-1
		while j >= 0 && a[j] > x
			a[j+1] = a[j]
			# p a
			j = j-1
		end
		a[j+1] = x
		# p a
	end
	a
end

arr = [42, 89, 23, 1]
p simple_search(arr, 1)
#=> 3
p simple_search(arr, 24)
#=> nil

p fibonacci_numbers(100)
#=> 218922995834555169026
#=> 218922995834555169026

p insertion_sort([25,77,14])