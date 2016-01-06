require_relative "models/reader"
require_relative "models/writer"

reader = Reader.new('dictionary.txt').load_file
writer = Writer.new.write_file

reader
writer