posts = [
  { id: 1, likes: 250, shares: 12 },
  { id: 2, likes: 180, shares: 45 },
  { id: 3, likes: 410, shares: 30 },
  { id: 4, likes: 95,  shares: 8 },
  { id: 5, likes: 320, shares: 60 }
]

top_way1 = posts
             .sort_by { |post| -(post[:likes] + post[:shares] * 2) }
             .first(3)

top_way2 = posts.max_by(3) { |post| post[:likes] + post[:shares] * 2 }

puts "Спосіб 1:"
top_way1.each do |post|
  engagement = post[:likes] + post[:shares] * 2
  puts "Публікація ##{post[:id]} — Engagement: #{engagement}"
end

puts "\nСпосіб 2:"
top_way2.each do |post|
  engagement = post[:likes] + post[:shares] * 2
  puts "Публікація ##{post[:id]} — Engagement: #{engagement}"
end