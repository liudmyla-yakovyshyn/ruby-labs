matrix = [
  [4, 2, 7],
  [1, 8, 5],
  [9, 3, 6]
]

sum_way1 = 0
i = 0
while i < matrix.length
  sum_way1 += matrix[i][i]
  i += 1
end
avg_way1 = sum_way1.to_f / matrix.length

sum_way2 = 0
matrix.each_with_index do |row, idx|
  sum_way2 += row[idx]
end
avg_way2 = sum_way2.to_f / matrix.size

puts "Спосіб 1 (while) — Сума: #{sum_way1}, Середнє: #{avg_way1.round(2)}"
puts "Спосіб 2 (each_with_index) — Сума: #{sum_way2}, Середнє: #{avg_way2.round(2)}"