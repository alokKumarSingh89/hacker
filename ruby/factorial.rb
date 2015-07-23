def factorial_test(data)
	output=[]
	data.each do |item|
		output << factorial(item)
	end
	output
end

def factorial(number)
	if number==1
		return number
	end

	number=number*factorial(number-1)
end


testcast=gets.chomp
input=[]
testcast.to_i.times do 
	input << gets.chomp.to_i
	
end
puts factorial_test(input)