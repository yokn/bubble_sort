# frozen_string_literal: true

# Initial plan:
# Take an array from the user and store it
# Create a new array to store the results
# Until end of the array is reached:
#     Compare the next two chars (with the spaceship operator)
#     If the second char is bigger than the first char:
#       Copy their values to the results array swapped
#     Else
#       Copy their values to the results array
#     If the last char is reached:
#       Reduce the array length by one
# Print the results array

def bubble_sort(user_array)
  change = true

  until change == false
    change = false
    user_array.each_with_index do |_value, index|
      next if index >= user_array.length - 1
      next unless user_array[index] > user_array[index + 1]

      # neat trick to swap two numbers without a temporary variable
      # https://coderwall.com/p/be_1va/swap-two-elements-of-an-array-in-ruby
      user_array[index], user_array[index + 1] = user_array[index + 1], user_array[index]
      change = true
    end
  end
  user_array
end

p bubble_sort([4, 3, 78, 2, 0, 2])
