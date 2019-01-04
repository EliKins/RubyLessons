print "Are you happy with your income? (Y/N) "
ans = gets.strip.capitalize

if ans == "Y"
	puts "Great!"
elsif ans == "N"
	puts "Not good.."
else
	puts "What?"
end