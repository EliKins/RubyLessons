print "Type in A: "
A = gets.to_f

print "Type in B: "
B = gets.to_f

print "What will you do? (+ - * /): "
symbol = gets.strip

case symbol
	when "+"
	puts "A #{symbol} B = #{A+B}"
	
	when "-"
	puts "A #{symbol} B = #{A-B}"

	when "*"
	puts "A #{symbol} B = #{A*B}"

	when "/"
	puts "A #{symbol} B = #{A/B}"
end