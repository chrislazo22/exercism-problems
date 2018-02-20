require 'pry'

class School
  def initialize
    @student_names = Hash.new { |hash, key| hash[key] = [] }
  end

  def students(grade)
    return [] if @student_names.empty?

    @student_names.fetch(grade)
  end

  def add(name, grade)
    @student_names[grade] << name
  end
end
