numbers = [4, 7, 4, 2, 9, 4, 7, 1, 4, 7, 7, 3]

result_way1 = numbers.reject { |num| numbers.count(num) > 2 }

result_way2 = []
numbers.each do |num|
  result_way2 << num if numbers.count(num) <= 2
end

puts "Початковий масив: #{numbers}"
puts "Спосіб 1: #{result_way1}"
puts "Спосіб 2: #{result_way2}"