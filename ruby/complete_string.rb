def check_string(item)
	status=false
	temp=""

	item.each_char do |ch|
		temp += ch unless temp.include?(ch)
	end	
	
	if temp.length==26
		status=true
	end

	status
end

def complete_string(input)
	output=[]	
	input.each do |item|
		output << (check_string(item)==true ? "YES" : "NO")
	end
	output
end

test_case=gets.chomp.to_i
input=[]
test_case.times do
	input << gets.chomp
end

puts complete_string(input)