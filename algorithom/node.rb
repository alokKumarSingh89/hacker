class Node
	attr_accessor :value, :next

	def initialize val, next_add
		@value = val
		@next = next_add
		p "Node Created with #{val}"
	end
end