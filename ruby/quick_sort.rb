@output=[];
def swap_element(array,first, second)
	temp=array[first]
	array[first]=array[second]
	array[second]=temp
	
	
end
def partition(array, low, high)
	element=array[high];
	i=low-1

	for j in (low)..high-1
		if array[j] <= element
			i=i+1
			swap_element(array,i,j)
		end
	end
	@output.push(array.inspect)
	swap_element(array,i+1,high)
	@output.push(array.inspect)
	
	return i+1
end
def quick_sort(array, low, high)
	#puts "#{low} : #{high}"
	if low < high
		pivot=partition(array,low, high)
		quick_sort(array, low, pivot-1)
		quick_sort(array, pivot+1, high)
	end
	
end

def write_file_output
	File.open("./outputfile/quick_sort.txt", "r+") do |file|
		file.puts @output
	end
end


array=[2,19,5,4,3,14,7]
puts quick_sort(array, 0, array.length-1)
write_file_output
