class Analyzer
  
  def initialize(data)
    @data = data
  end
  
  def minimum
    @data.min
  end
  
  def maximun
    @data.max
  end
  
  def average
    @data.inject{ |sum, el| sum + el }.to_f / @data.size
  end
  
  def standar_deviation
    
  end
end