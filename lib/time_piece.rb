class TimePiece

  attr_reader :date

  def initialize
    @date = Time.new.yday
  end

  def today_date
    @date
  end

end