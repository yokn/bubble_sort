# frozen_string_literal: true

# Take an array from the user and store it
def bubble_sort(user_array)
  # Create a new array to store the results
  change = true
  i = 1
  # Until end of the array is reached:
  #   Compare the next two chars (with the spaceship operator)
  #   If the second char is bigger than the first char:
  #     Copy their values to the results array swapped
  #   Else
  #     Copy their values to the results array
  #   If the last char is reached:
  #     Reduce the array length by one
  # while index < user_array_length
  until change == false
    puts "BEGIN loop #{i}"
    change = false
    user_array.each_with_index do |_value, index|
      puts "index is: #{index}"
      # puts user_array[index]
      # puts user_array[index + 1]
      # next if change == true
      next if index >= user_array.length - 1
      next unless user_array[index] > user_array[index + 1]

      puts "#{user_array[index]} is bigger than #{user_array[index + 1]}"
      user_array[index], user_array[index + 1] = user_array[index + 1], user_array[index]
      change = true
      puts "change is: #{change}"
    end
    puts change
    puts "END loop #{i}"
    i += 1
  end
  puts "sorted array: #{user_array}"
end
# Print the results array
bubble_sort([4, 3, 78, 2, 0, 2])
