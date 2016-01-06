require_relative "reader.rb"

class Writer
  def initialize
    @sequences = Reader.new('dictionary.txt').load_file
  end

  def write_file
    words_file = File.open('words', 'w')
    sequences_file = File.open('sequences', 'w')

    @sequences.each do |key, value|
      if value.uniq.size == 1
        words_file.puts value.uniq.first
        sequences_file.puts key
      end
    end
    words_file.close
    sequences_file.close
  end
end