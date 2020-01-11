require 'time_piece'
require 'date'

describe TimePiece do
  describe "#initialize" do
    let(:subject) { described_class.new("james", 1, 1)}
    it 'test that instantiates with todays date' do
      expect(subject.date).to eq(11)
    end
    it 'test that instantiates with todays day' do
      expect(subject.day).to eq(1)
    end
    it 'test that instantiates with todays month' do
      expect(subject.month).to eq(1)
    end

    it 'test that instantiates with todays date' do
      expect(subject.name).to eq('james')
    end
  end

end


