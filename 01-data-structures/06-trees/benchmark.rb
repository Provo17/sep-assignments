require 'benchmark'
require_relative 'binary_tree/binary_search_tree'
require_relative 'min_binary_heap/min_binary_heap'

binary_tree_root = Node.new("binary tree", 17)
binary_heap_root = Node.new("binary heap", 17)

binary_tree = BinarySearchTree.new(binary_tree_root)
binary_heap = MinBinaryHeap.new(binary_heap_root)



Benchmark.bm(100) do |x|
    x.report("Binary Tree Insert") do
        for i in 1..100000 do 
            node = Node.new("Binary tree", Random.rand(100000))
            binary_tree.insert(binary_tree_root, node)
        end
    end
    x.report("Binary Heap Insert") do 
        for i in 1..100000 do
            node = Node.new("Binary heap", Random.rand(100000))
            binary_heap.insert(binary_heap_root, node)
        end
    end
end

midpoint = Node.new("midpoint", 50000)
binary_tree.insert(binary_tree_root, midpoint)
binary_heap.insert(binary_heap_root, midpoint)

Benchmark.bm(100) do |x| 
    x.report("Binary tree midpoint") do
        binary_tree.find(binary_tree_root, 50000)
    end
    x.report("Binary heap midpoint") do
        binary_heap.find(binary_heap_root, 50000)
    end
end

Benchmark.bm(100) do |x| 
    x.report("Binary tree delete") do
        binary_tree.delete(binary_tree_root, 50000)
    end
    x.report("Binary heap delete") do
        binary_heap.delete(binary_heap_root, 50000)
    end
end
            
