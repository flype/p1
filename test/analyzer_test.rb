require "test/unit"

require File.expand_path(File.dirname(__FILE__) + "/../analyzer")

class TestLibraryFileName < Test::Unit::TestCase
  def test_minium_of_two_number
    assert_equal 1.0, Analyzer.new([1.0, 2.0]).minimum
  end

  def test_minium_of_tree_number
    assert_equal 1.0, Analyzer.new([1.0, 2.0, 3.0]).minimum
  end

  def test_maximun_of_tree_number
    assert_equal 3.0, Analyzer.new([1.1, 2.2, 3.0]).maximun
  end
  
  def test_average_of_tree_number
    assert_equal 2.1, Analyzer.new([1.1, 2.2, 3.0]).average
  end

  def test_average_of_two_number
    assert_equal 1.0, Analyzer.new([1.0, 1.0]).average
  end
end