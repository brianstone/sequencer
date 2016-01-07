require_relative "reader.rb"

class Writer
  attr_accessor :sequences
  def initialize(sequences)
    @sequences = sequences
  end

  def write_file
    words_file = File.open("#{path}words", "w")
    sequences_file = File.open("#{path}sequences", "w")

    @sequences.each do |key, value|
      if value.uniq.size == 1
        words_file.puts value.uniq.first
        sequences_file.puts key
      end
    end
    words_file.close
    sequences_file.close
  end

  def path
    ""
  end
end