dictionary = {"dog" => ["gae", "peong"], "cat" => ["goyang-i"], "girl" => ["sonyeo"]}

loop do
	print "Type in a word: "
	word = gets.strip.downcase

	if word == ""
		break
	end

	translation = dictionary[word]
	
	if translation == nil
		print "I'm sorry, no such word is available. Do you know the translation (Y/N)? "
		ans = gets.strip.upcase

		if ans == "Y"
			print "Translation: "
			translatedWord = gets.strip.downcase
			dictionary[word] = translatedWord
		end
	else
		print "#{word} -> "
		dictionary[word].each do |x|
			print "#{x}, "
		end
		puts
	end
end