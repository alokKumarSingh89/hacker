def cal_doller(number)
	return (number/2)+(number/3)+(number/4)
end
def cal_ruppess(array)
	for i in 0..array.length-1
		puts cal_doller(array[i])
	end
end
test_case=gets.chomp.to_i
input = []
test_case.times do
		input << gets.chomp.to_i
end

cal_ruppess(input)
