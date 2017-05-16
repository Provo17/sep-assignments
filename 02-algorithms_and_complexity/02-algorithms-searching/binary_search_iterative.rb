# DEF BINARY_SEARCH(collection, value)
#  # #1
#  low = 0
#  high = length_of(collection) - 1

#  # #2
#  WHILE low <= high
#   # #3
#   mid = (low + high) / 2
#   IF collection[mid] > value THEN
#      # #4
#      high = mid - 1
#   ELSE IF collection[mid] < value
#      # #5
#      low = mid + 1
#   ELSE
#      # #6
#      return mid
#   END IF
#  END WHILE

#  # #7
#  return not_found

# At #1, low is set to the index of the first item in the collection. We set high to be the last index.

# At #2, the algorithm iterates using a while loop with the condition that it will stop once low is greater than high. low will only be greater than high if the item is not in the collection.

# At #3, mid is set to low plus high divided by two to get the middle index of the slice. The division in this pseudocode will cut off any hanging decimals.

# At #4, if the value at mid (denoted collection[mid]) is greater than value then we know that the value we're searching for is in the lower half of the collection. We ignore the upper half of the collection by updating high to mid minus one.

# At #5, if the value at mid is less than value then we know the value we're searching for is in the upper half of the collection. We ignore the lower half of the collection by updating low to mid plus one.

# At #6, we return mid because we know that the value at mid is neither greater or lesser than value, so it must be equal.

# At #7, we return an out of bounds index to indicate that value wasn't found.


    
def binary_search(array,target)
    
    min = 0
    max = array.length - 1
    
    while min <= max
        mid = (min + max) / 2
        if array[mid] > target
            max = mid -1
        elsif array[mid] < target
          low = mid + 1  
        else
          return mid
        end
    end

end

arr = []
(0...10).each do |x|
  arr.push(x)
end
puts binary_search(arr, 3)


