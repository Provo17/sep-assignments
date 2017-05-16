
def binary_search_recursive(array,target)
    
    min = 0
    max = array.length - 1
    
    while min <= max
        mid = (min + max) / 2
        if array[mid] > target
            binary_search_recursive(array[(mid+1)...max], target)
        elsif array[mid] < target
          binary_search_recursive(array[min...mid], target) 
        else
          return mid
        end
    end

end

arr = []
(0...10).each do |x|
  arr.push(x)
end
puts binary_search_recursive(arr, 3)