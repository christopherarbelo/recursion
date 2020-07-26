# frozen_string_literal: true

def merge_sort(array)
  return array unless array.length > 1

  dividing_index = array.length / 2
  left_array = merge_sort(array[0...dividing_index])
  right_array = merge_sort(array[dividing_index..-1])
  merge(left_array, right_array)
end

def merge(left_array, right_array)
  left_pointer = 0
  right_pointer = 0
  sorted_array = []

  until left_pointer == left_array.length || right_pointer == right_array.length
    if left_array[left_pointer] < right_array[right_pointer]
    then sorted_array.push(left_array[left_pointer]) and left_pointer += 1
    else sorted_array.push(right_array[right_pointer]) and right_pointer += 1 end
  end

  populate_remaining_values(sorted_array, left_array, right_array, left_pointer, right_pointer)
end

def populate_remaining_values(sorted_array, left_array, right_array, left_pointer, right_pointer)
  if left_pointer == left_array.length
    right_array[right_pointer..-1].each { |item| sorted_array.push item }
  else
    left_array[left_pointer..-1].each { |item| sorted_array.push item }
  end
  sorted_array
end
