require_relative 'user'
require 'date'

class Event
  attr_accessor :title, :start_date, :duration, :participants

  def initialize(title, start_date, duration)
    @title = title
    @start_date = DateTime.parse(start_date) 
    @duration = duration                      
    @participants = []
  end

 
  def add_participant(user)
    @participants << user
  end

  
  def past?
    DateTime.now > @start_date + Rational(@duration, 24)
  end

  
  def soon?
    now = DateTime.now
    @start_date > now && @start_date <= now + 7
  end

 
  def to_s
    info = "Événement : #{@title}\n"
    info += "Date de début : #{@start_date.strftime("%d/%m/%Y %H:%M")}\n"
    info += "Durée : #{@duration} heures\n"
    info += "Participants : "
    info += @participants.empty? ? "Aucun" : @participants.map(&:email).join(", ")
    info
  end
end
