def swap(array, i, j)
	temp=array[i]
	array[i]=array[j]
	array[j]=temp
end
def heapify(array,i,length)
		
end

def build_heap(array,length)
	
	for i in (length/2-1)...0
		heapify(array,i,length)
	end
end
def sort(array)
	length=array.length
	build_heap(array,length)
	for i in (length-1)..0
		swap(array,0,i)
		heapify(array,0,i)
	end
end
a=[5,3,16,2,10,14]
sort(a)

#pending... 