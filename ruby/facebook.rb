def facebook_photo(input, l)
	output=[]
	input.each do |item|
		w, h=item.split(" ")
		w, h=w.to_i, h.to_i
		if w< l || h < l
			output << "UPLOAD ANOTHER"
		elsif (w==h && h==l)
			output << "ACCEPTED"
		else
			output << "CROP IT"
		end
	end
	output
end



l=gets.chomp.to_i
test_case=gets.chomp.to_i
input=[]
test_case.times do
	input << gets.chomp
end

puts facebook_photo(input, l)