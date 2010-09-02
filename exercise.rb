require 'parser'
require 'analyzer'

analyzer = Analyzer.new( *Parser.read_file("assets/pings.txt"))

puts "Minium #{analyzer.minimum}"
puts "Maximun #{analyzer.maximun}"
puts "Mean #{analyzer.mean}"
puts "Standar Deviation #{analyzer.standar_deviation}"
puts "Lost Rate #{analyzer.lost_rate}"
analyzer.plot