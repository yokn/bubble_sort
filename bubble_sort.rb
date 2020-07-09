# frozen_string_literal: true

# Take an array from the user and store it
def bubble_sort(user_array)
  # Create a new array to store the results
  results_array = []
  user_array_length = user_array.length
  # Until end of the array is reached:
  #   Compare the next two chars (with the spaceship operator)
  #   If the second char is bigger than the first char:
  #     Copy their values to the results array swapped
  #   Else
  #     Copy their values to the results array
  #   If the last char is reached:
  #     Reduce the array length by one
  # while index < user_array_length
  user_array.each_with_index do |_value, index|
    puts "index is: #{index}"
    puts "user_array_length is: #{user_array_length}"
    # puts user_array[index]
    # puts user_array[index + 1]
    unless index >= user_array_length - 1
      if user_array[index + 1] > user_array[index]
        puts "abc, #{user_array[index + 1]} is bigger than #{user_array[index]}"
        results_array[index] = user_array[index + 1]
        results_array[index + 1] = user_array[index]
      else
        puts "hello, #{user_array[index + 1]} is smaller than or equal to #{user_array[index]}"
        results_array[index] = user_array[index]
        results_array[index + 1] = user_array[index + 1]
      end
    end
  end
  #   user_array_length -= 1
  # end
  puts "sorted array: #{results_array}"
end
# Print the results array
bubble_sort([4, 3, 78, 2, 0, 2])
