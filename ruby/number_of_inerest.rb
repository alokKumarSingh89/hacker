def cal_num(item)
	temp=item.split(" ")
	x=temp[0].to_i
	y=temp[1].to_i
	n=temp[2].to_i

	num = []
	sum=0;
	x.times do
		num << y
		sum+=y
	end
	if x < n
		num[x]=sum;

		for i in (x+1)..n-1
			num[i]=2*num[i-1]-num[i-x-1]
			#puts num.inspect
		end
	end
	puts num[num.length-1]
end
def cal_nth_number(inputs)  
	inputs.each do |item|
		cal_num(item)
	end
end
test_case=gets.chomp.to_i
input =[]
test_case.times do
	input << gets.chomp
end
cal_nth_number(input)
