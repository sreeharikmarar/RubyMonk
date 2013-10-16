class Queue
  def initialize
   @queue = Array.new
  end
  def dequeue
    @queue.pop
  end
  def enqueue(element)
    @queue.unshift(element)
    self
  end
  def to_s
   "Queue : #{@queue}"
  end
end
q = Queue.new
puts q.enqueue(1)
puts q.enqueue(2).enqueue(3)
puts q.dequeue
