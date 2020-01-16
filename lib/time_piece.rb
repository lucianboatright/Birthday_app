class TimePiece

  attr_reader :today_date, :day, :month

  def initialize(month,day)
    # @date = Time.new.yday
    @day = day
    @month = month
    @today_date = Time.new.yday
  end

  def birthday? 
    @today_date == user_date
  end

  def user_date
    Time.new(0,@month,@day).yday
  end

  def count_down
    # if tday == bday
    #   return message
    # elsif bday > tday
    #   365 - (tday - bday)
    # elsif tday == bday
    #   tday - bday
    # end
  end
end