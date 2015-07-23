@number_list ={"0" => 6, "1" => 2, "2" => 5, "3" => 5, 
	"4" => 4, "5" => 5, "6" => 6, "7" => 4, "8" => 7, "9" => 6}


def print_count(string_value)
	count = 0
	string_value.each_char do |itm|
		count += @number_list[itm]
	end
	return count
end

def iterate_loop(array)
	for i in 0..array.length-1
		puts print_count(array[i])
	end
end
test_case=gets.chomp.to_i
input = []
test_case.times do 
	input << gets.chomp
end
iterate_loop(input)

