# code here!

require 'pry'
class School

  attr_accessor :name, :roster

  attr_reader :grade

  def initialize(name)
    @name = name
    @roster= {}
  end

  def add_student(name, grade)
    @roster[grade] ||= []
    @roster[grade] << name
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    # binding.pry
    @roster.each do |grade, name_array|
      name_array.sort!
    end
  end


end
