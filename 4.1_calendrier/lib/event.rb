require 'time'

class Event
  attr_accessor :start_date, :duration, :title, :attendees
  
  def initialize(time, duration, title, attendees)
    @start_date = Time.parse(time)
    @duration = duration.to_i
    @title = title.to_s
    @attendees = attendees
  end

  def postpone_24h
    @start_date += (3600 * 24)
  end

  def end_date
  end_date = @start_date + (@duration * 60)    
  return end_date.hour
  end

  def is_past?
    Time.now > @start_date
  end

  def is_future?
    !self.is_past?
  end

  def is_soon?
    @start_date - (30 * 60) < Time.now
  end

  def to_s
    puts "Titre : #{@title}"
    puts "Date de début : #{@start_date}"
    puts "Durée : #{@duration} minutes"
    puts "Invités : #{@attendees.join(", ")}"    
  end
end