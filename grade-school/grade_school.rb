require 'pry'

class School
  def initialize
    @student_names = Hash.new { |hash, key| hash[key] = [] }
  end

  def students(grade)
    return [] if @student_names.empty?
    @student_names.fetch(grade).sort
  end

  def add(name, grade)
    @student_names[grade] << name
  end

  def students_by_grade
    return [] if @student_names.empty?
    
    new_array = []
    new_array << new_hash = {grade: @student_names.keys[0], students: @student_names[6].sort }
  end
end
