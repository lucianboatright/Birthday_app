class TimePiece

  attr_reader :date

  def initialize
    @date = Time.new.yday
  end

end