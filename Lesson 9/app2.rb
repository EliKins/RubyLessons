mas = Array.new

loop do |x|
	print "Type in your favorite color or \"stop\": "
	ans = gets.strip.downcase
	
	if ans == "stop"
		puts "\nYour favorite colors:"
		puts mas.uniq
		break
	end

	mas << ans

end