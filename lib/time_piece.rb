class TimePiece

  attr_reader :today_date, :day, :month

  def initialize(month, day)
    # @date = Time.new.yday
    @day = day
    @month = month
    @today_date = Time.new.yday
  end

  def birthday? 
    @today_date == user_date
  end

  def user_date
    p "MONTHHHHHH"
    p @month
    p "DAYYYYYYY"
    p @day
    Time.new(0, @month, @day).yday
  end


  def count_down
    if user_date < today_date
     (@today_date - user_date)
    elsif user_date > today_date
      365 - (user_date - @today_date)
    end
  end
end