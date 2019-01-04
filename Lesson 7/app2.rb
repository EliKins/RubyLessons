print "How many rounds will you play? "
rounds = gets.to_i

num = 0

1.upto(rounds) do |x|
	num = rand(1..50)
	print "\nPress Enter to play"
	gets

	if num == 3 
		puts "You won with the number #{num}!"
	else
		puts "Played #{x} times"
	end	
end
