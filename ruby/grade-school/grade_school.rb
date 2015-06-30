class School
  attr_reader :students

  def initialize
    @students = Hash.new { |student, grade| student[grade] = [] }
  end

  def to_hash
    sorted = students.map { |grade, students| [grade, students.sort] }.sort
    Hash[sorted]
  end

  def add(name, grade)
    students[grade] << name
  end

  def grade(grade)
    students[grade].sort
  end

end