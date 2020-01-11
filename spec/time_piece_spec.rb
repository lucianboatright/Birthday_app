require 'time_piece'
require 'date'

describe TimePiece do
  describe "#initialize" do
    it 'test that instantiates with todays date' do
      expect(subject.today_date).to eq Time.new.yday
    end
  end
end


