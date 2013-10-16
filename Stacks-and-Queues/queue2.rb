class Queue
  def initialize(size)
    @size = size
    @queue = Array.new(size)
    @tail = 0
    @head = -1
  end
  
  def dequeue
    if empty?
      nil
    else
      @tail = @tail.succ
      dequeued = @queue[@head]
      @queue.unshift(nil)
      @queue.pop
      dequeued
    end
  end
  
  def enqueue(element)
    if full? or element.nil?
      nil
    else
      @tail = @tail.pred
      @queue[@tail] = element
      self
    end
  end
  
  def size
    @size
  end

  def to_s
   "@queue : #{@queue}"
  end  
  private
  
  def full?
    @tail == @size - 1
  end
  
  def empty?
    @tail == 0 and @head == -1
  end
end

q = Queue.new(4)
puts q
puts q.enqueue(1)
puts q.enqueue(2)
puts q.enqueue(3)
puts q.enqueue(4)
puts q.dequeue
puts q.dequeue
puts q.enqueue(5)
