class Stack
  def initialize
   @store = Array.new
  end
  def push(item)
   @store.push(item)
   puts "Store :#{@store}"
  end
  def pop
   @store.pop
  end
end
s = Stack.new
s.push(1)
s.push(2)
puts s.pop
