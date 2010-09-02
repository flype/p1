class Numeric
  def square
    self * self
  end
end

class Array
  def sum 
    self.inject(0){|a, x| x + a } 
  end
  
  def mean 
    self.sum.to_f / self.size
  end
  
  def median
    case self.size % 2
      when 0 then self.sort[self.size/2-1,2].mean
      when 1 then self.sort[self.size/2].to_f
    end if self.size > 0
  end
  
  def squares 
    self.inject(0){|a,x| x.square + a } 
  end
  
  def variance 
    self.squares.to_f / self.size - self.mean.square
  end
  
  def deviation 
    Math::sqrt( self.variance ) 
  end
end
