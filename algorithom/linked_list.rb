class Node
	attr_accessor :value, :next

	def initialize val, next_in_line
		@value = val
		@next = next_in_line
	end
end

class LinkedList
	def initialize val 
		@head = Node.new(val, nil)
	end
	def add(value)
    # Traverse to the end of the list
    # And insert a new node over there with the specified value
    current = @head
    while current.next != nil
      current = current.next
    end 
    current.next = Node.new(value,nil)
  end
  
  def display
  	# Traverse through the list till you hit the "nil" at the end
    current = @head
    full_list = [] 
    while current.next != nil 
      full_list += [current.value.to_s]
      current = current.next
    end
    full_list += [current.value.to_s]
    puts full_list.join("-")
  end

  def display_nth_form_end(nth_node)
  	temp = @head
  	p_nth_node = nil
  	count = 0
  	while temp != nil
  		count=count+1;
  		if nth_node-count == 0
  			p_nth_node = @head
  		elsif count-nth_node > 0
  			p_nth_node = p_nth_node.next
  		end
  		temp = temp.next
  	end
  	p_nth_node.value
  end

  def reverse_list
    temp = nil 
    nextNode = nil
    while @head != nil 
      nextNode = @head.next
      @head.next = temp
      temp = @head
      @head = nextNode
    end
    @head = temp
  end
end

# Initializing a Linked List with a node containing value (5)
ll = LinkedList.new(5)
# Adding Elements to Linked List
ll.add(10)
ll.add(20)
ll.add(1)
ll.add(2)
ll.add(14)
ll.add(22)

# # Display the Linked List
puts "Displaying Linked List:"
ll.display
p "3 element from last #{ll.display_nth_form_end 3}"
ll.reverse_list
p "List #{ll.display}"