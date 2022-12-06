require 'pry-byebug'

# Implement a method #stock_picker that takes in an array of stock prices, one for each 
# hypothetical day. It should return a pair of days representing the best day to buy and 
# the best day to sell. Days start at 0.

# > stock_picker([17,3,6,9,15,8,6,1,10])
#   => [1,4]  # for a profit of $15 - $3 == $12
puts "[#{},#{}] # for a profit of $#{} - $#{} == $#{}"
# You need to buy before you can sell
# Pay attention to edge cases like when the lowest day is the last day or the highest day is the first day.

stock_prices = [17,3,6,9,15,8,6,1,10]

def stock_picker(stock_array)
ref_hash = {}
profits = []
ref_array = Array.new()
counter = 0
stock_array.each_with_index {|value, index| ref_hash[index] = value}
stock_array.each do
  |value| 
  ref_array[counter] = stock_array.drop(counter)
  profits.append(ref_array[counter].max - ref_array[counter].first)
  ref_array[counter].append([ref_array[counter].first, ref_array[counter].max])
  counter += 1
end
day = profits.each_with_index.max[1]
min_index = ref_hash.key(ref_array[day].last[0])
max_index = ref_hash.key(ref_array[day].last[1])
min_value = ref_array[day].last[0]
max_value = ref_array[day].last[1]

puts "[#{min_index},#{max_index}] # for a profit of \
$#{max_value} - $#{min_value} == $#{max_value - min_value}"
end

# min_index = profits.each_with_index.max[1]
# max_index reference_array[min_index].each_with_index.max[1]


# unless the index of max is less than index of min?

# Assume first index is min

# .drop
# The .drop method returns the elements after n elements of the array:


# .min gets min of array

# .minmax returns min and max of array 

# array.drop(3)
# => [3, 4]

# do drop for each index of array and store in nested array
# get min max of nested array, max - min = profit
# compare profits
