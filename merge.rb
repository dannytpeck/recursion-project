def merge_sort(list)
	if list.size == 1
		return list
	else
		middle = list.size / 2
		left = list[0..middle-1]
		right = list[middle..list.size]

		left = merge_sort(left)
		right = merge_sort(right)

		return merge(left, right)
	end
end

def merge(left, right)
	sorted_list = []

	while left.size > 0 && right.size > 0
		if left[0] <= right[0]
			sorted_list << left.shift
		else
			sorted_list << right.shift
		end
	end

	return sorted_list + left + right
end

a = [4, 2, 111, 3, 15, 3, 34, 21, 17]
print a
puts 
print merge_sort(a)
puts
