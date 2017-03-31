class MyQueue
  attr_accessor :head
  attr_accessor :tail

  def initialize
    @queue = Array.new
    @head = @queue[0]
    @tail = @queue[-1]
  end

  def enqueue(element)
    @queue.unshift(element)
    @head = @queue[0]
    @tail = @queue[-1]
  end

  def dequeue
    @queue.slice!(- 1)
    @tail = @queue[-1]
  end

  def empty?
    if (@queue.empty?)
      return true
    else
      return false
    end
  end
end