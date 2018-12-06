# vowels = ['a','e','o','u','i']

# def translate(string)
# 	string = string.downcase
# 	array = string.split(' ')
# 	array = array.each |x| 
		


# end


def translate(string)
	string = string.downcase
	# Multiple words
	if string.include? ' '
		i = string.index ' '
		string = string.gsub(/^[aeuio].+/, string[0..i-1] + 'ay' + string[i..-1])
		string = string.gsub(/^[^aeuio]{2}\S+/, string[2..string.length] + string[0..1] + 'ay')
		string = string.gsub(/^[^aeuio]\S+/, string[1..string.length] + string[0] + 'ay')

		string = string.gsub(/ [aeuio]\S+ /, string + 'ay')
		string = string.gsub(/ [^aeuio]\S+ /, string + string[0] +'ay')
	# Single words
	else	
		# Vowel single word
		string = string.gsub(/^[aeuio].+/, string + 'ay')
		# Two consonants
		string = string.gsub(/^[^aeuio]{2}\S+/, string[2..string.length] + string[0..1] + 'ay')
		# Single consonant (Needs to be after two)
		string = string.gsub(/^[^aeuio]\S+/, string[1..string.length] + string[0] + 'ay')
	end
	
end