@direction = [:left, :right, :up, :down]

def get_command()
	return @direction.sample
end

case get_command()
	when :left
		puts "The robot is going left"
	when :right
		puts "The robot is going right"
	when :up
		puts "The robot is going up"
	when :down
		puts "The robot is going down"
end