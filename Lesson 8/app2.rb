num = rand(1..101)
x = 0

puts "Guess the number!"

1.upto(10) do |n|
	print "Guess #{n}, guesses left #{11-n}. \nYour guess: "
	x = gets.to_i

	if x == num
		puts "Congrats, you got it!"
		break
	elsif x < num
		puts "Too small"
	elsif x > num
		puts "Too large"
	end
end