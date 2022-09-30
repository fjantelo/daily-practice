# Given two sorted arrays, merge the second array into the first array while ensuring that the first array remains sorted. Do not use any built-in sort methods.

# Input :
# A : [1, 5, 8]
# B : [6, 9]

# Modified A : [1, 5, 6, 8, 9]

def merge_sorted_arrays(array1, array2)
  index1 = 0
  index2 = 0
  output = []
  while index1 < array1.length && index2 < array2.length
    if array1[index1] < array2[index2]
      output << array1[index1]
      index1 += 1
    elsif array1[index1] > array2[index2]
      output << array2[index2]
      index2 += 1
    end
  end
  if array1[array1.length - 1] < array2[array2.length - 1]
    output << array2[array2.length - 1]
  elsif array1[array1.length - 1] > array2[array2.length - 1]
    output << array1[array1.length - 1]
  end
  return output
end

p merge_sorted_arrays([1, 5, 8], [6, 9])
