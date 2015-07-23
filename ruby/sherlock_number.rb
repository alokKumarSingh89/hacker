def cal_pth(array,p)
	#num=array[array.length-1]
	if array.length< p
		puts "-1"
	else
		puts array[p-1]
	end
	
end
def cal_smll(inputs)
	inputs.each do |key,value|
		cal_pth(value['array']-value['k_array'],value['p'].to_i)
	end
end
test_case=gets.chomp.to_i
input={}

for i in 1..test_case
	first=gets.chomp.strip.split(" ")
	second=gets.chomp.strip.split(" ")
	array=(1..first[0].to_i).to_a
	p=first[2]
	second=second.map{|e| e.to_i}
	#puts "#{array}: #{p} :#{second}"
	input[i]={"array" => array, "p" => p, "k_array" => second}
end
cal_smll(input)