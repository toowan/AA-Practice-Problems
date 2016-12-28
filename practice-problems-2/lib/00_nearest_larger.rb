def nearest_larger(arr, idx)

	diff = 1

	while true 
		left = idx - diff
		right = idx + diff

		# Put the condition for the left first so the program would check the left before the right. 
		if (left >= 0) && (arr[idx] < arr[left])
			return left

		# If the left isn't greater than arr[idx], check if the right is.
		elsif (right < arr.length) && (arr[idx] < arr[right])
			return right

		# If the left and right are out of bounds, return nil
		elsif (left < 0) && (right >= arr.length)
			return nil
		end

		diff +=1 
	end

end


