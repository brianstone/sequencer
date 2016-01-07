require_relative "models/reader"
require_relative "models/writer"

reader = Reader.new('dictionary.txt')
reader.load_file
writer = Writer.new(reader.sequences)
writer.write_file