require 'readline'
def cal_sum(key,array)
	key=key.split("-")[0]
	
	reminder=0
    
	for i in 0..array.length-2
		sum=array[i].to_i
		if sum%key.to_i > reminder
			reminder=sum%key.to_i
		end

		for j in (i+1)..array.length-1
			#if array[i]!=array[j]
				sum=sum+array[j].to_i
				if sum%key.to_i > reminder
					reminder=sum%key.to_i
				end
			#end
			
		end
	end
	reminder
end
def cal_max(input)
	input.each do |key, value| 
        puts cal_sum(key,value.split(" "))
	end
end
test_case=gets.chomp.to_i
 input=Hash.new
 count=0
 test_case.times do
    first=readline
 	second=readlines
    second=second[0]
 	first=first.split(" ")[1];
 	first=first+'-'+count.to_s
 	input[first] = second
 	count+=1
 end

#puts input["123-0"]

cal_max(input)

