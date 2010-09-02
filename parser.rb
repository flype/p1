class Parser
  class << self
    def read(string)
      string.split("time=")[1][0..3] rescue nil
    end

    def read_file(filename)
      data = Array.new
      File.open(filename, "r") do |infile|
        while (line = infile.gets)
          data << read(line)
        end
      end
      data.compact.map(&:to_f)
    end

  end
end