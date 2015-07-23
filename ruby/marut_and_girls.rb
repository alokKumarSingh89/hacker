marut_qua_num = gets.chomp.to_i
marut_qua_list = gets.chomp.split(" ")
num_of_girl = gets.chomp.to_i

count = 0 
for i in 0..num_of_girl-1
	input = gets.chomp.split(" ")
	match = input & marut_qua_list
	if match.length >= marut_qua_list.length 
			count +=1
	end
end
p count
