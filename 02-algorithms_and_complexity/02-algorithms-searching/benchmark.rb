require 'benchmark'
require_relative 'fibonacci_iterative.2'
require_relative 'fibonnaci_recursive'



fib_iterative = FibIterative.new
fib_recursive = FibRecursive.new

Benchmark.bm(20) do |x|
    x.report('fibonacci_iterative') do
        fib_iterative.fib(20)
    end

    x.report('fibonacci_recursive') do
        fib_recursive.fib(20)
    end
end

