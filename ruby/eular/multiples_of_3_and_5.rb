sum = 0
number = 1000
(1..number-1).each do |num|
	if num % 15 == 0
		sum +=num
	elsif num % 3 == 0
		sum +=num
	elsif num % 5 == 0
		sum +=num	
	end
end
p sum