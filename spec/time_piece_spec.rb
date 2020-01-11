require 'time_piece'
require 'date'

describe Time_piece do
  describe "#initialize" do
    it 'test that instantiates with todays date' do
      expect(subject.todays_date).to eq Time.new
    end
  end
end


