binary_nums = gets.chomp
count = 0
previous_char = ''
binary_nums.each_char do |char|
	if previous_char!=char
		previous_char = char
		count = 1
	else
		count+=1
	end
	if count >= 6
		break
	end
	
end

if count >= 6
	puts "Sorry, sorry!"
else
	puts "Good luck!"
end