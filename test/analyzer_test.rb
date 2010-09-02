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
    assert_equal 2.1, Analyzer.new([1.1, 2.2, 3.0]).mean
  end

  def test_average_of_two_number
    assert_equal 1.0, Analyzer.new([1.0, 1.0]).mean
  end
  
  def test_standar_deviation
    assert_equal "0.816496580927726", Analyzer.new([1.0, 2.0, 3.0]).standar_deviation.to_s
  end

  def test_varianze
    assert_equal "0.666666666666667", Analyzer.new([1.0, 2.0, 3.0]).variance.to_s
  end
  
  def test_lost_rate
    assert_equal "0.4", Analyzer.new([], [1, 4, 5]).lost_rate.to_s
  end

  def test_lost_rate_100
    assert_equal "0.99", Analyzer.new([], [100]).lost_rate.to_s
  end
  
end