def echo(string)
	return string
end

def shout(string)
	return string.upcase
end

def repeat(string, times=2)
	i = 1
	final_string = string
	while i < times do 
		final_string = final_string + ' ' + string
		i = i + 1
	end
	return final_string
end

def start_of_word(word,num)
	return word[0..num-1]
end

def first_word(string)
	space = string.index(' ') - 1
	return string[0..space]
end

def titleize(string)
	string = string.gsub(/\S+/, &:capitalize)
	string = string.gsub(/[A-Za-z]{1,4} /, &:downcase)
	string.gsub(/^./, &:capitalize)
end