class TimePiece

  attr_reader :date, :name, :day, :month

  def initialize(name,day,month)
    @date = Time.new.yday
    @name = name
    @day = day
    @month = month
  end


end