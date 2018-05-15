# code here!
require 'pry'
class School
  attr_reader :name

  def initialize(name)
    @name = name
    @roster = {}
  end

  def roster
    @roster
  end

  def add_student(name, grade)
    if !@roster[grade]
      @roster[grade] = []
      @roster[grade] << name
    else
      @roster[grade] << name
    end
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    @roster.each do |key, value|
      value.sort!
      end
  end

end

flhs = School.new("Fairfield Ludlowe High School")
flhs.add_student("John Burnett", 12)
flhs.add_student("Mighty Mo", 12)
flhs.add_student("Alph Green", 12)
flhs.sort
