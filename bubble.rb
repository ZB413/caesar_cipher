def sorted?(nums)
  for num in 0..(nums.size-2)
    if nums[num]<=nums[num+1]
      true
    else
      return false
    end
  end
end

def bubble_sort(nums)
  sorted = false
  while sorted == false do
    for sortee in 0..(nums.size-2)
      if nums[sortee] > nums[sortee+1]
        nums[sortee+1], nums[sortee] = nums[sortee], nums[sortee+1]
      end
    end
    sorted = sorted?(nums)
  end
  print nums
end

bubble_sort([11,30,3,1,27,44,5])
