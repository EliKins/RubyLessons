@game = [:rock, :paper, :scissors]

def CheckWinner(choice)
	win = "You win!"
	ai = Randomize()
	
	puts "You chose #{choice} and the computer chose #{ai}"

	if ai == choice
		puts "It's a draw"
	elsif ai == :paper && choice == :scissors
		puts win
	elsif ai == :scissors && choice == :rock
		puts win
	elsif ai == :rock && choice == :paper
		puts win
	else
		puts "You lose..."
	end
end
			

=begin	case ai
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
=end
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
