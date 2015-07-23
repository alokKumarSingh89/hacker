require "./node"
class CirculeLinkedList
	attr_accessor :head
	def initialize val
		@head = Node.new(val, nil) if @head.nil?
	end
	def add value, cir_pos
		current = @head
		count = 1
		cir_pos_node = nil
	    while current.next != nil
	      current = current.next
	      count=count+1
	      if count == cir_pos
	      	cir_pos_node = current	
	      end
	      
	    end 
	    current.next = Node.new(value,nil) if cir_pos_node.nil?
	    current.next = Node.new(value,cir_pos_node) unless cir_pos_node.nil?
	    self 
	end
	def display
		node_list = Hash.new
		full_list = []
		current = @head
		while current.next != nil 
			full_list += [current.value.to_s]
	    current = current.next
			if node_list[current].nil?
				node_list[current] = [current.value.to_s]
			else
				break;
			end
		end
	  full_list += [current.value.to_s]
	  puts full_list.join("-")
	end

	def check_circular_by_hashtable
		node_list = Hash.new
		status = false
		current = @head
		while current.next != nil 
			current = current.next
			if node_list[current].nil?
				node_list[current] = [current.value.to_s]
			else
				status = true
				break;
			end
		end
		status
	end
	def check_circular_by_two_pointer
		#Floyd algorithm
		slow_ptr = @head
		fast_ptr = @head
		while slow_ptr && fast_ptr
			slow_ptr = slow_ptr.next
			fast_ptr = fast_ptr.next
			if fast_ptr == nil
				return 0
			end
			fast_ptr = fast_ptr.next
			if fast_ptr == nil
				return 0
			end
			
			if fast_ptr == slow_ptr
				return 1
			end
			
		end
		return 0
	end

	def find_begining_of_loop
		slow_ptr = @head
		fast_ptr = @head
		loopExits = 0
		while slow_ptr && fast_ptr
			slow_ptr = slow_ptr.next
			fast_ptr = fast_ptr.next
			if fast_ptr == nil
				loopExits = 0
				break
			end
			fast_ptr = fast_ptr.next
			if fast_ptr == nil
				loopExits = 0
				break
			end
			if fast_ptr == slow_ptr
				loopExits = 1
				break
			end
			
		end
		if loopExits == 1
			slow_ptr = @head
			while slow_ptr != fast_ptr
				fast_ptr = fast_ptr.next
				slow_ptr = slow_ptr.next
			end
			return slow_ptr
		end
		return nil
	end

	def count_loop_length
		fast_ptr = @head
		slow_ptr = @head
		loopExits = 0
		counter = 0
		while slow_ptr && fast_ptr
			slow_ptr = slow_ptr.next
			fast_ptr = fast_ptr.next
			if fast_ptr == nil
				loopExits = 0
				break
			end
			fast_ptr = fast_ptr.next
			if fast_ptr == nil
				loopExits = 0
				break
			end
			if fast_ptr == slow_ptr
				loopExits = 1
				break
			end
			if fast_ptr == nil
				loopExits = 0
				break
			end
		end
		if loopExits == 1
			fast_ptr = fast_ptr.next
			while slow_ptr != fast_ptr
				fast_ptr = fast_ptr.next
				counter = counter+1
			end
			return counter
		end
		return 0
	end

	
end

cir_node = CirculeLinkedList.new(5)
cir_node.add(20, nil)
cir_node.add(23, nil)
cir_node.add(12, nil)
cir_node.add(45, nil)
cir_node.add(3, nil)
cir_node.add(1, nil)
cir_node.add(11, nil)
cir_node.add(33, nil)
cir_node.add(22, nil)
cir_node.add(21, nil)
cir_node.add(29, nil)
cir_node.add(13, nil)
cir_node.add(14, nil)
cir_node.add(7, nil)
cir_node.add(4, nil)
cir_node.add(9, nil)
cir_node.add(10, nil)
cir_node.add(41, nil)

#cir_node.add(55, 10)
cir_node.display
p "Circular LinkedList availabe by hash table :#{cir_node.check_circular_by_hashtable}"
p "Circular LinkedList availabe by two pointer :#{cir_node.check_circular_by_two_pointer}"
start_node = cir_node.find_begining_of_loop
unless start_node.nil?
	p "Circular LinkedList start node :#{start_node.value}"	
end
p "List Loop Lenght :#{cir_node.count_loop_length} "
