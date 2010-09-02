class Parser
  class << self
    def read_time(string)
      string.split("time=")[1][0..3] rescue nil
    end
    
    def read_seq(string)
      string.split("icmp_seq=")[1].split(" ")[0] rescue nil
    end

    def read_file(filename)
      data, seq = Array.new, Array.new
      File.open(filename, "r") do |infile|
        while (line = infile.gets)
          data << read_time(line)
          seq << read_seq(line)
        end
      end
      return data.compact.map(&:to_f), seq.compact.map(&:to_i)
    end

  end
end