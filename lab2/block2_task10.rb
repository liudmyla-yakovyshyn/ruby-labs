matrix = [
  [3, -5, 12],
  [8, 15, -2],
  [0, 7, 20]
]

print "Введіть константу: "
LIMIT = gets.to_f

sum_way1 = 0
i = 0
while i < matrix.length
  j = 0
  while j < matrix[i].length
    val = matrix[i][j]
    if val > 0 && val > LIMIT
      sum_way1 += val
    end
    j += 1
  end
  i += 1
end

sum_way2 = 0
matrix.each do |row|
  row.each do |val|
    sum_way2 += val if val > 0 && val > LIMIT
  end
end

puts "Спосіб 1 (вкладений while): #{sum_way1}"
puts "Спосіб 2 (ітератор each): #{sum_way2}"