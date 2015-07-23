@count=0
def insert(array, pos, value)
	i=pos-1
	while i>=0 && array[i].to_i > value.to_i
		array[i+1]=array[i]
		i-=1
		@count+=1
	end
	array[i+1]=value
end
def sort(array)
	
	for i in 1..array.length-1
		
		@count+=1
		insert(array,i,array[i])
	end
	
end
array=gets.chomp
array=array.split(" ")
sort(array)
puts array.inspect
puts "Count :#{@count}"