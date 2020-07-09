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
  user_array.each_with_index do |_value, index|
    while index < user_array_length
      puts index
      puts user_array_length
      # puts user_array[index]
      # puts user_array[index + 1]
      if user_array[index + 1] < user_array[index]
        results_array[index] = user_array[index + 1]
        results_array[index + 1] = user_array[index]
        puts 'hi'
      else
        results_array[index] = user_array[index]
        results_array[index + 1] = user_array[index + 1]
        puts 'hello'
      end
    end
    user_array_length -= 1
  end
  puts results_array
end
# Print the results array
puts bubble_sort([4, 3, 78, 2, 0, 2])
