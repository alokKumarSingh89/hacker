def check_jumble(input)
	input.each do |item|
		temp  = item.split(" ")
		com_size = temp[0].split("") & temp[1].split("")
		if com_size.length == temp[0].length && com_size.length == temp[1].length
			puts "YES"
		else
			puts "NO"
		end

	end
	
end
test_case = gets.chomp.to_i
input = []
test_case.times do
	input << gets.chomp
end

check_jumble(input)