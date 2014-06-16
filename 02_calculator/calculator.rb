def add(a, b)
	a + b
end

def subtract(a, b)
	a - b
end

def sum(array)
	sum = 0
	array.each do |number|
		sum += number
	end
	return sum
end

def multiply(array)
	product = 1
	array.each do |number|
		product *= number
	end
	return product
end

def power(a, b)
	a**b
end

def factorial(number)
	if number == 0
		return 1
	else
		factorial = 1
		1.upto(number) do |i|
			factorial *= i
		end
		return factorial
	end
end