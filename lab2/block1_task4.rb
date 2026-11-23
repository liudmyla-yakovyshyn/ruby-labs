arr = [10, 21, 32, 43, 54, 65, 76, 87]

even_pos = []
odd_pos = []
i = 0
while i < arr.length
  if i.even?
    even_pos << arr[i]
  else
    odd_pos << arr[i]
  end
  i += 1
end
res_way1 = even_pos + odd_pos

even_iter = []
odd_iter = []
arr.each_with_index do |val, idx|
  if idx.even?
    even_iter << val
  else
    odd_iter << val
  end
end
res_way2 = even_iter + odd_iter

puts "Початковий масив: #{arr}"
puts "Спосіб 1 (цикл while): #{res_way1}"
puts "Спосіб 2 (each_with_index): #{res_way2}"