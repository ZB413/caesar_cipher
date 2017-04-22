def sorted?(arr)
  for word in 0..(arr.size-2)
    if arr[word].length<=arr[word+1].length
      true
    else
      return false
    end
  end
end

def bubble_sort_by(arr)
  sorted = false
  while sorted == false
    for word in 0..arr.size-2
      if yield(arr[word],arr[word+1])>0
        arr[word],arr[word+1] = arr[word+1],arr[word]
      end
    end
    sorted = sorted?(arr)
  end
  print arr
end

bubble_sort_by(["Hi","SHOOTEM","Hello","Hey","Billy","Yo"]) do |left, right|
  left.length - right.length
end
