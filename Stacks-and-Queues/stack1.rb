class Stack
  def initialize
   @store = Array.new
  end
  def push(item)
   @store.push(item)
   self # Push method should always return self for allowing the chaining of the method , 
	# like it will return the modified result each time
  end
  def pop
   @store.pop
  end
  def to_s
    "store : #{@store}"
  end
end
s = Stack.new
puts s.push(1)
puts s.push(2).push(3)
puts s.pop
