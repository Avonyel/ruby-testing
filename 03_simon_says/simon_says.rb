def echo(string)
	string
end

def shout(string)
	string.upcase
end

def repeat(string, number=2)
	output = string
	2.upto(number) do
		output = output + " " + string
	end
	return output
end

def start_of_word(string, number)
	string.slice(0..number-1)
end

def first_word(string)
	array = string.split(" ")
	array[0]
end

def titleize(string)
	small_word_array = ["a", "an", "and", "the", "amid", "as", "at", "but", "by", "down", "for", "from",
						"in", "into", "like", "near", "of", "off", "on", "onto", "over", "per",
						"than", "to", "up", "upon", "via", "with"]
	array = string.split(" ")
	array.map do |word|
		if small_word_array.include?(word)
			if array.index(word) == 0 || array.index(word) == -1
				word.capitalize!
			end
		else
			word.capitalize!
		end
	end
	string = array.join(" ")
end