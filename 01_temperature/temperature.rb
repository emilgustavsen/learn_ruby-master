def ftoc(fahrenheit)
		celcius = (fahrenheit - 32) * 0.55556
		celcius.to_i
end

def ctof(celcius)
		fahrenheit = (celcius.to_f * 9/5) + 32
end