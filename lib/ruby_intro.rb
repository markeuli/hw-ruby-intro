# When done, submit this entire file to the autograder.

# Part 1

def sum arr
	sum = 0
	arr.each do |x| sum += x end
	return sum
end

def max_2_sum arr
	sum = 0
	
	if arr.length == 0
		return sum
	end

	if arr.length == 1
		return arr[0]
	end
	
	#positions first as greatest and second as second greatest
	first = (arr[0] >= arr[1])? arr[0] : arr[1]
	second = (arr[0] < arr[1])? arr[0] : arr[1]
	
	#iterate over all contents besides first 2 nums
	arr.each_with_index do |x, i|
		if i == 0 or i == 1
			next
		end
	
		if x == first
			second = x
		else
			if  x > first 
				second = first
				first = x
			else
				if x > second
					second = x
				end
			end
		end
			
	end	
	sum = first + second
	return sum		
end 

def sum_to_n? arr, n
  arr.each_with_index do |x, i|
	arr.each_with_index do |y, j|
		if i == j
			next
		end
		if x + y == n
			return true
		else next
		end
	end
  end
  return false
end

# Part 2

def hello(name)
	return 'Hello, ' + name
end

def starts_with_consonant? s

	#source: https://ruby-doc.org/core-2.5.1/Regexp.html
	#searching for consonant example
  if s.empty? 
	return false
  else
	s = s.downcase
	if !s[0].match(/[a,e,i,o,u]/) && s[0].match(/^[[:alpha:]]$/) 
		return true
	else
		return false
	end
  end
end

def binary_multiple_of_4? s
 if s.empty?
	return false
 end
 if s.match(/[a-zA-Z]/) 
	return false
 end

 int = s.to_i(10)
 return int % 2 == 0
 
end

# Part 3

class BookInStock
	attr_accessor :isbn, :price

	def initialize(isbn, price)
		raise ArgumentError if isbn.empty? || price <= 0
		@isbn = isbn
		@price = price
	end

	def price_as_string
		s_price = "$%.2f" % price
	end
end
