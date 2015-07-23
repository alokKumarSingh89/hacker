def isPrime(number)
	return false if number < 2
	for i in 2..number/2
		return false if number%i==0
	end
	return true
end
def calculate(number)

	prime_number_list=[]
	for i in 2..number-1
		
		if isPrime(i)
			prime_number_list << i
		end
	end
	prime_number_list
end
def calacute_prime(number)
	if isPrime(number)
		puts "1"
	else
		prime_number_list=calculate(number)
		puts prime_number_list.inspect

	end
	
end
def add_prime(number,prime_list)
	
end
def print_prime_number(input)
	for i in 0..input.length-1
		calacute_prime(input[i])
	end
end

test_case=gets.chomp.to_i
test_input=[]
test_case.times do
	test_input << gets.chomp.to_i
end

print_prime_number(test_input)