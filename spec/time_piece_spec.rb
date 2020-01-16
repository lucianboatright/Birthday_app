require 'time_piece'
require 'date'

describe TimePiece do
  describe "#initialize" do
    let(:subject) { described_class.new(1, 1)}
    # name_1 = double('james')
    # allow(name_1).to recive(:name) { 'james' } 
    it 'test that instantiates with todays date' do
      expect(subject.user_date).to eq(1)
    end
    it 'test that instantiates with todays day' do
      expect(subject.day).to eq(1)
    end
    it 'test that instantiates with todays month' do
      expect(subject.month).to eq(1)
    end
  end

  #   it 'test that instantiates with todays name' do
  #     expect(subject.).to eq('james')
  #   end
  # end

end


