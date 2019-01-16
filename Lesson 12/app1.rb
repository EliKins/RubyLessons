combos = {111 => 10, 222 => 20, 555 => 50, 888 => 80}
balance = 100

until balance <= 0 || balance >= 200 do
	puts balance
	puts "Press 'Enter' to play or write 'STOP' to exit"
	command = gets.strip.upcase

	if command == "STOP"
		break
	end

	num = rand(100..999)

	if combos[num]
		balance += combos[num]
		puts num
		puts "Congratulations, you won! Current balance: #{balance}"
	else
		puts num
		balance -= 5
		puts "Sorry, you lost. Current balance: #{balance}"
	end
end

if balance == 0
	puts "Sorry, you're out of money"
end