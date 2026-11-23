arr = [12, 5, 18, 3, 24, 9, 15]

sum = 0.0
for item in arr
  sum += item
end
avg = sum / arr.length

res_way1 = []
for item in arr
  res_way1 << item if item > avg
end

avg_iter = arr.sum.to_f / arr.size
res_way2 = arr.select { |item| item > avg_iter }

puts "Масив: #{arr}, середнє: #{avg.round(2)}"
puts "Спосіб 1 (цикл for): #{res_way1}"
puts "Спосіб 2 (select): #{res_way2}"