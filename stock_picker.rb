stock_prices = [17,3,6,9,15,8,6,1,10]

def stock_picker(stock_array)
ref_hash = {}
ref_array = Array.new()
profits = []
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