require "json"

file_path = File.join(__dir__, "data", "input.json")

raw_data = File.read(file_path)
parsed_data = JSON.parse(raw_data)

puts "Шлях до файлу: #{file_path}"
puts "Зчитані дані: #{parsed_data}"