def cal_disc(input)
	base_price = 1000
	discount = 0
	p input
	input.each_key do |key|
		temp =  base_price
		input[key].each do |single|
			temp = (temp*(100-single.to_i))/100 if single.to_i!=0
		end
		discount = temp if discount==0
		discount = temp if discount > temp
	end
	p discount  
end
test_case = gets.chomp.to_i

for t in 0..test_case-1
	input = {}
	n, m = gets.chomp.split(" ")
	for i in 1..n.to_i
		for j in 1..m.to_i
			input["#{i}-#{j}"] = gets.chomp.split(" ")
		end
	end
	cal_disc(input)
end
