def swap(array,i, k)
	temp=array[i]
	array[i]=array[k]
	array[k]=temp
end

def partition(array, left, rigth)
	num=array[rigth]
	k=left
	for i in left..rigth-1
		if array[i] <= num
			swap(array,i,k)
			puts array.inspect
			k+=1
		end
	end
	swap(array, k,rigth)

	return k
end

def quick_sort(array, left, rigth)
  if left< rigth
    pivote=partition(array, left,rigth)

    quick_sort(array, left, pivote-1)
    quick_sort(array, pivote+1, rigth)
  end
end
array=[6,5,2,1,4,7,3,12,20,30,14,10,10]
quick_sort(array,0,array.length-1)

