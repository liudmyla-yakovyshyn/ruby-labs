PI_APPROX = 3.141592653589793

radius = 5.0
height = 12.0

area_way1 = 2 * Math::PI * radius * height

diameter = radius * 2
area_way2 = PI_APPROX * diameter * height

puts "Радіус: #{radius}, висота: #{height}"
puts "Спосіб 1: #{area_way1.round(2)}"
puts "Спосіб 2: #{area_way2.round(2)}"