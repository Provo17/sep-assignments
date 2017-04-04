require 'benchmark'
require_relative 'node'
require_relative 'linked_list'

array = []
list = LinkedList.new

puts "array"
puts Benchmark.measure {
  array = []
  (0...10000).each do |x|
    array[x] = Node.new(x)
  end
}

puts "list"
puts Benchmark.measure {
  (0...10000).each do |x|
    list.add_to_tail(Node.new(x))
  end
}

puts "5000th item in array"
puts Benchmark.measure {
  array[4999]
}

puts "5000th item in list"
puts Benchmark.measure {
  node = list.head
  (1..4999).each do |x|
    node = node.next
  end
}

puts "Delete 5000th element"
puts Benchmark.measure {
  array.delete_at(4999)
}

puts "Delete 5000th node"
puts Benchmark.measure {
  node = list.head
  (1..4999).each do |x|
    node = node.next
  end
  list.delete(node)
}