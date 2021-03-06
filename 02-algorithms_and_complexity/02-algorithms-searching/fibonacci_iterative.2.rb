# Psudeocode
# DEF FIB(n)
#   SET fib_0 to 0
#   SET fib_1 to 1
#   FOR each value from 0 to one less than n
#     SET temp to fib_0
#     ASSIGN fib_1 to fib_0
#     COMPUTE temp + fib_1, ASSIGN to fib_1
#   END FOR
#   RETURN fib_1
# END DEF

class FibIterative

    def fib(n)
        fib_0,fib_1 = 0,1
        
        n.times do
            fib_0, fib_1 = fib_1, fib_0 + fib_1
        end
        return fib_0
    end
end

#  puts fib(0)
#  puts fib(1)
#  puts fib(2)
#  puts fib(3)
#  puts fib(4)
#  puts fib(5)
#  puts fib(6)
#  puts fib(7)
#  puts fib(8)
#  puts fib(9)