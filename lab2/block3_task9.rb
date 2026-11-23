config_path = File.join(__dir__, "settings.conf")
clean_lines = []

File.foreach(config_path) do |line|
  formatted = line.chomp.strip
  next if formatted.empty? || formatted.start_with?("#")

  clean_lines << formatted
end

puts "Корисні рядки конфігурації:"
clean_lines.each { |l| puts l }