@num = Array.new
@money = 100

def PullLever()
	3.times do |x|
		5.times do
			@num[x] = rand(0..9)
			print "\r#{@num[x]}"
			sleep 0.1
		end
		puts
	end
end

def EndMessage()
	if @money == 0
		puts "You lost..."
	elsif @money >= 200
		puts "You won! You now have $#{@money}"
	else 
		puts "You're now left with $#{@money}"
	end
end

print "How old are you? "
age = gets.to_i

print "Do you want to play a game? (Y/N) "
ans = gets.strip.capitalize

if ans == "Y" && age >= 18
	puts "Ok! You'll start off with $100. Keep pressing Enter to try your luck! (Type STOP to leave)"

	while @money >= 0 || @money <= 200 do
		key = gets.strip.upcase
		if key == "STOP"
			break
		end
		PullLever()

		case
		when @num.count { |y| y == 1} == 3
			@money += 100
			puts "Congratulations, you got 111! You've earned $100. Current amount: $#{@money}"
		when @num.count { |y| y == 5} == 3
			@money += 50
			puts "Good for you! You just earned $50. Current amount: $#{@money}"
		when @num[0] == @num[1] || @num[1] == @num[2] || @num[0] == @num[2]
			@money += 10
			puts "Yay, you got doubles! You've earned $10. Current amount: $#{@money}"
			puts "Remember: If you want to stop playing, type in \"STOP\""
		else
			@money -= 5
			puts "Too bad. You just lost $5. Current amount: $#{@money}"
		end

	end
	EndMessage()	
end
