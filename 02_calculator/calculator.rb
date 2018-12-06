def add(num, num2)
	num + num2
end

def subtract(num, num2)
	num - num2
end

def sum(array)
	array.reduce(0, :+)
end

def multiply(array)
	# array = Array.[](num, num2)
	array.reduce(1, :*)
end

def power(num, num2)
	num**num2
end

def factorial(num)
	(1..num).reduce(:*) || 1
end