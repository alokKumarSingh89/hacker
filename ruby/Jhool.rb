def jhool_test(data)
	output=[]
	data.each do |item|
		previous_length=item.length
		next_length=item.sub('www.','').sub('.com','').scan(/[^aeiou]/).count+4
		output << "#{next_length}/#{previous_length}"
	end
	output
end



testcast=gets.chomp
input=[]
testcast.to_i.times do 
	input << gets.chomp
	
end
puts jhool_test(input)