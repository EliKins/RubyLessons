addressBook = {}

loop do
	print "Would you like to add a name (Y/N)? "
	ans = gets.strip.upcase

	if ans == "Y"
		print "Name: "
		fname = gets.strip.capitalize
		print "Number: "
		number = gets.strip

		addressBook[fname] = number
	elsif ans == "N"
		break
	end
end

addressBook.each do |key, value|
	puts "#{key}: #{value}"
end		