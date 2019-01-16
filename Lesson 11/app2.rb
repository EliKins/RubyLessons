dictionary = {"dog" => ["gae", "peong"], "cat" => ["goyang-i"], "girl" => ["sonyeo"]}

loop do
	print "Type in a word: "
	word = gets.strip.downcase

	if word == ""
		break
	end
	
	if !dictionary.has_key? word
		print "I'm sorry, no such word is available. Do you know the translation (Y/N)? "
		ans = gets.strip.upcase

		if ans == "Y"
			print "Translation: "
			translatedWord = gets.strip.downcase
			dictionary[word] = [translatedWord]
		end
	else
		puts "\n#{word} has #{dictionary[word].count} translation(s)"
		puts "They are:"
		dictionary[word].each do |x|
			puts "#{x}"
		end
		puts
	end
end
