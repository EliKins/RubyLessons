print "How many years will you save up: "
years = gets.to_i

print "How much will you put away each month: "
amount = gets.to_i
sum = 0

1.upto(years) do |x|
	1.upto(12) do |y|
	sum += amount
	puts "Year #{x} month #{y}, saved up: #{sum}"
	end
end
