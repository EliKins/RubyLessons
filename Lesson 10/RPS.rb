@game = [:rock, :paper, :scissors]

def CheckWinner(choice)
	ai = Randomize()
	puts "You chose #{choice} and the computer chose #{ai}"

	case ai
	when choice
		puts "It's a draw"
	when :rock
		if choice == :paper
			puts "You win!" 
		else 
			puts "You lose..."
		end
	when :paper
		if choice == :scissors 
			puts "You win!"
		else 
			puts "You lose..."
		end
	when :scissors
		if choice == :rock 
			puts "You win!"
		else 
			puts "You lose..."
		end
	end
end

def Randomize()
	return @game.sample
end

loop do
	print "Rock (R), Paper (P) or Scissors (S)? "
	ans = gets.strip.upcase

	case ans
	when "R"
		CheckWinner(:rock)
	when "P"
		CheckWinner(:paper)
	when "S"
		CheckWinner(:scissors)
	when "STOP"
		break
	else
		print "I'm sorry, but that's the wrong symbol"
	end
end