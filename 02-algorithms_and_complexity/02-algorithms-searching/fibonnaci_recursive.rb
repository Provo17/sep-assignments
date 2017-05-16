
class FibRecursive
 
 def fib(n)
   if (n == 0)
     return 0
   elsif (n == 1)
     return 1
   else
     return fib(n-1) + fib(n-2)
   end
 end
end

#                            user     system      total        real
# fibonacci_iterative    0.000000   0.000000   0.000000 (  0.000006)
# fibonacci_recursive    0.000000   0.000000   0.000000 (  0.001327)


