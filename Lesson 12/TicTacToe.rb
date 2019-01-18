@gameBoard = [{1 => "", 2 => "", 3 => ""}, {4 => "", 5 => "", 6 => ""}, {7 => "", 8 => "", 9 => ""}]
@winMoves = [[1, 2, 3], [1, 5, 9], [1, 4, 7], [2, 5, 8], [3, 6, 9], [4, 5, 6], [7, 8, 9]]
@playerTurn = true

def emptyBoard
	@gameBoard.each do |hash|
		hash.each_key do |key|
			hash[key] = :*
			print " #{:*} "
		end
		puts
	end
end

def isBlockFree(move)
	@gameBoard.each do |hash|
		if hash[move] == :*
			if @playerTurn
				hash[move] = :X
			else
				hash[move] = :O
			end
			return true
		end
	end
	return false
end

def showGameboard()
	@gameBoard.each do |hash|
		hash.each_value do |value|
			print " #{value} "
		end
		puts
	end
end

def checkWin()
  wins = 0
	if @playerTurn
		check = :X
	else
		check = :O
	end

	@winMoves.each do |arr|
		arr.each do |x|
			@gameBoard.each do |hash|
				wins +=1 if hash.has_key?(x) && hash[x] == check
			end
		end
		
		return true if wins == 3
		wins = 0
	end
	return false
end

begin
	win = false
	emptyBoard()
	
	@playerTurn = !@playerTurn if rand(0..1) == 1

	while win == false
		if @playerTurn
			loop do
				print "\nYour move: "
				move = gets.to_i

				break if isBlockFree(move)
				puts "Move is invalid"
				showGameboard()
			end
		else
			print "\nComputer's move: "
			loop do
				num = rand(1..9)
				if isBlockFree(num)
					puts "#{num}"
					break
				end
			end
		end
		showGameboard()

		if checkWin()
			if @playerTurn 
				puts "\nPlayer wins"
			else
				puts "\nComputer wins"
			end
			break
		end
		@playerTurn = !@playerTurn
	end
	print "Do you want to play again (Y/N)? "
	checkText = gets.strip.upcase
end until checkText == "N"
