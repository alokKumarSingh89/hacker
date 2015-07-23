even_sum = 2
first = 1
second = 2
limit = 4000000
sum = 0
while sum < limit
	sum = first + second
	first = second
	second = sum
	if second % 2 == 0
		even_sum += second
	end
end

p even_sum