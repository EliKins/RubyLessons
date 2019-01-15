@students = [["Jacob", 21], ["Dillan", 20], ["Riley", 21]]

def PrintStudents()
	(@students.length).times do |x|
			puts "#{x+1} - #{@students[x][0]}, #{@students[x][1]}"
	end
end

def DeleteStudents()
	print "Who would you like to delete (number)? "
	num = gets.to_i
	@students.delete_at num-1	
end

def AddStudents()
	print "Who would you like to add (name)? "
	fname = gets.strip.capitalize
	print "Their age? "
	age = gets.to_i
	@students << [fname, age]
end

loop do
	PrintStudents()

	print "\nWhat would you like to do (delete or add)? "
	ans = gets.strip.downcase

	case ans
	when "delete"
		DeleteStudents()
	when "add"
		AddStudents()
	when ""
		break
	else
		puts "I'm sorry, that command is incorrect"
	end
end