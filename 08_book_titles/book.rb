class Book
	def title=(title)
		not_capitalized = ["a", "an", "and", "the", "amid", "as", "at", "but", "by", "down",
						   "for", "from", "in", "into", "like", "near", "of", "off", "on",
						   "onto", "over", "per", "than", "to", "up", "upon", "via", "with"]
		title_array = title.split(" ")
		title_array.map do |word, index|
			unless not_capitalized.include?(word)
				word.capitalize!
			end
		end

		title_array[0].capitalize!
		title_array[-1].capitalize!

		@title = title_array.join(" ")
	end

	def title
		@title
	end
end