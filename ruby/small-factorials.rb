def factorial(number)
	
	return number if number==1
	return number*factorial(number-1)
end

test_case=gets.chomp.to_i
facotrial_number_list=[]

test_case.times do 
	facotrial_number_list << gets.chomp.to_i
end

for number in facotrial_number_list
	puts factorial(number)
end