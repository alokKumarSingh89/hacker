def pos_number(number)
	if number < 0
		return -number
	else
		return number
	end
	
end
def query_cal(qa_array,qu_array)
	qu_array.each do |query|
		total=0
		for i in 0..qa_array.length-1
			qa_array[i]=qa_array[i].to_i+query.to_i
			total+=pos_number(qa_array[i])
		end	
		puts total
	end
end
array_lenth=$stdin.readline
qa_array=$stdin.readline.split(" ")
query=$stdin.readline
qu_array=$stdin.readline.split(" ")
# qa_array="-1 2 -3".split(" ")
# qu_array="1 -2 3".split(" ")
query_cal(qa_array,qu_array)
#puts "#{array_lenth} : #{qa_array.inspect} : #{query} : #{qu_array.inspect}"
