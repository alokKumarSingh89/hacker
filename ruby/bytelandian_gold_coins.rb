def cal_doller(number)
	sum = (number/2)+(number/3)+(number/4)
	return sum > number ? sum : number
end
def cal_ruppess(array)
	for i in 0..array.length-1
		puts cal_doller(array[i].to_i)
	end
end
test_case=gets.chomp.to_i
input = []
test_case.times do
	input << gets.chomp
end

cal_ruppess(input)