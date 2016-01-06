class Reader
  attr_accessor :filename, :words, :sequences
  def initialize(filename)
    @filename = filename
    @words = []
    @sequences = Hash.new { |hash, key| hash[key] = [] }
  end

  def load_file
    File.open(@filename) do |f|
      f.each_line do |line|
        if line.chomp.length >= 4
         @words << line.chomp
        end
      end

      @words.each do |word|
      	n = word.length - 3

      	n.times do |i|
      		@sequences[word[i..(i+3)]] << word
      	end
      end
    end
  end
end
