require 'rubygems'
require 'stats'
require 'gnuplot'

class Analyzer  
  def initialize(data, seq = [])
    @data = data
    @seq  = seq
  end
  
  def minimum
    @data.min
  end
  
  def maximun
    @data.max
  end
    
  def mean
    @data.mean
  end

  def variance
    @data.variance
  end
  
  def standar_deviation
    @data.deviation
  end
  
  def lost_rate
   (@seq.last - @seq.size).to_f / @seq.last
  end
  
  def plot
    Gnuplot.open do |gp|
      Gnuplot::Plot.new( gp ) do |plot|

        plot.xrange @seq.last.to_s
        plot.title  "ping delay"
        plot.ylabel "x"
        plot.xlabel "sequence"

        plot.data << Gnuplot::DataSet.new( @data ) do |ds|
          ds.with = "lines"
          ds.linewidth = 2
        end
      end
    end
  end
  
end