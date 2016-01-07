require_relative '../models/writer.rb'

RSpec.describe Writer do
  after do
    FileUtils.rm("/tmp/sequences")
    FileUtils.rm("/tmp/words")
  end
  let(:sequences) do
    {
      "bria" => ["brian"],
      "joan" => ["joanna", "joanne"]
    }
  end
  let(:writer) { Writer.new(sequences) }

  context "#write_file" do
    before do
      allow(writer).to receive(:path) { "/tmp/"}
    end

  	it "creates a sequences file" do
  		writer.write_file
  		expect(File).to exist("/tmp/sequences")
  	end

  	it "creates a words file" do
  		writer.write_file
  		expect(File).to exist("/tmp/words")
  	end

    it "creates a sequences file with correct content" do
      writer.write_file
      sequences_result = File.read("/tmp/sequences")

      expect(sequences_result).to include('bria')
      expect(sequences_result).to_not include('joan')
    end

    it "creates a words file with correct content" do
      writer.write_file
      words_result = File.read("/tmp/words")

      expect(words_result).to include('brian')
      expect(words_result).to_not include('joanna')
      expect(words_result).to_not include('joanne')
    end


  end

end