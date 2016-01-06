require_relative '../models/reader.rb'

RSpec.describe Reader do
  let(:reader) { Reader.new('dictionary.txt') }

	it 'responds to filename' do
		expect(reader).to respond_to(:filename)
    expect(reader.filename).to eq('dictionary.txt')
	end

  it 'responds to words' do
    expect(reader).to respond_to(:words)
  end

  it 'should initialize words as an array' do
    expect(reader.words).to be_a(Array)
  end

  it 'should initialize words as empty' do
    expect(reader.words.size).to eq(0)
  end

  it 'responds to sequences' do
    expect(reader).to respond_to(:sequences)
  end

  it 'should initialize sequences as a hash' do
    expect(reader.sequences).to be_a(Hash)
  end

  it 'should initialize sequences as empty' do
    expect(reader.sequences).to eq({})
  end

  context '#load_file' do
    it 'loads the supplied file' do
      reader.load_file
      words_size = reader.words.size

      expect(words_size).not_to be 0
    end

    it 'loads items into @sequences' do
      reader.load_file
      sequences_size = reader.sequences.size

      expect(sequences_size).not_to be 0
    end
  end
end