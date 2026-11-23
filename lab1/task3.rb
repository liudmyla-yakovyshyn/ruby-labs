nested_array = [[1, 2], [3, [4, 5]], [6, 7]]

flat_way1 = nested_array.flatten(1)

flat_way2 = nested_array.reduce(:concat)

puts "Початковий масив: #{nested_array.inspect}"
puts "Спосіб 1: #{flat_way1.inspect}"
puts "Спосіб 2: #{flat_way2.inspect}"