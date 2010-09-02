require "test/unit"
require File.expand_path(File.dirname(__FILE__) + "/../parser")

class TestParser < Test::Unit::TestCase
  def test_extract_basic_time
    raw_ping = "64 bytes from gigamed1.red.uv.es (147.156.241.4): icmp_seq=1 ttl=58 time=9.38 ms"
    assert_equal "9.38", Parser.read(raw_ping)
  end

  def test_extract_basic_time_2
    raw_ping = "64 bytes from gigamed1.red.uv.es (147.156.241.4): icmp_seq=2 ttl=58 time=7.07 ms"
    assert_equal "7.07", Parser.read(raw_ping)
  end
  
  def test_read_a_incorrect_line
    raw_line = "PING gigamed1.uv.es (147.156.241.4) 56(84) bytes of data."
    assert_equal nil, Parser.read(raw_line)
  end
  
  def test_read_a_incorrec_line_2
    raw_line =  "2942 packets transmitted, 2942 received, 0% packet loss, time 599960ms"
    assert_equal nil, Parser.read(raw_line)    
  end
  
  def test_read_from_a_file
    file = File.expand_path(File.dirname(__FILE__) + "/fixtures/ping.txt")
    assert_equal [ 9.38, 7.07, 9.74, 8.51, 3.77, 9.86, 8.73, 8.22, 107 ], Parser.read_file(file)
  end
end