require_relative '../models/writer.rb'

RSpec.describe Writer do
  let(:writer) { Writer.new }

  context "#write_file" do
  	it "creates a sequences file" do
  		writer.write_file
  		expect(File).to exist("sequences")
  	end

  	it "creates a words file" do
  		writer.write_file
  		expect(File).to exist("words")
  	end
  end

end