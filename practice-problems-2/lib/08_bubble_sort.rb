# Write a function ‘bubble_sort(arr)’ which will sort an array of integers using the 
# “bubble sort” methodology.  (http://en.wikipedia.org/wiki/Bubble_sort) 

def bubble_sort(arr)
  # Swapped is false when no swaps have been made
  swapped = false

  # Until no more swaps can be made, keep swapping indices
  until swapped
    # Change swapped's initial value to true to begin swapping
    swapped = true
    (arr.length-1).times do |i|
      if arr[i] > arr[i+1]
        arr[i], arr[i+1] = arr[i+1], arr[i]
        # Change swapped back to false when swappings are complete, thus ending the loop.
        swapped = false
      end
    end
    
  # Return new bubble orted array
  return arr
end


