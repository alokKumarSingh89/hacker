def show_absence(inputs)
	
	inputs.each do |key, value| 
		vals=value.split(" ")
		count=0
		vals.each do |single|
			if single.to_i <= 0
				count+=1
			end
		end
		#puts "#{key}:#{count}"
		k=key.split("-")[0]
		if k.to_i <= count
			puts "NO"
		else
			puts "YES"
		end
	end
end
 test_case=gets.chomp.to_i
 input=Hash.new
 count=0
 test_case.times do
 	first=gets.chomp
 	second=gets.chomp
 	first=first.split(" ")[1];
 	first=first+'-'+count.to_s
 	input[first] = second
 	count+=1
 end



show_absence(input)
