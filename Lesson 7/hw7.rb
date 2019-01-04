print "How old are you? "
age = gets.to_i

print "Do you want to play a game? (Y/N) "
ans = gets.strip.capitalize

num = 0
money = 100

if ans == "Y" && age >= 18
	puts "Ok! You'll start off with $100. Keep pressing Enter to try your luck! (Type STOP to leave)"

	while num >= 0 || num <= 200 do
		key = gets.strip.upcase
		if key == "STOP"
			break
		end

		num = rand(1..101)
		case num
		when 1, 100
			money += 100
			puts "Congratulations, you got #{num}! You've earned $100. Current amount: $#{money}"
		when 50..60
			money -= 5
			puts "Oh no, #{num}! You've lost $5. Current amount: $#{money}"
		when 75..80
			money -= 10
			puts "Oh no, #{num}! You've lost $10. Current amount: $#{money}"
		when 10..15, 35..40, 80..85
			money += 5
			puts "Yay, you got #{num}! You've earned $5. Current amount: $#{money}"
		else
			puts "Whew! Nothing happened"
		end
	end

	if money == 0
		puts "You lost..."
	elsif money >= 200
		puts "You won! You now have $#{money}"
	else 
		puts "You're now left with $#{money}"
	end
end