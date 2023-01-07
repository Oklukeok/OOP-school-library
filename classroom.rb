require_relative './student_class'

class ClassRoom
  attr_accessor :label
  attr_reader :students

  def initialize(label)
    @label = label
    @students = []
  end

  def addstudent(student)
    @students.push(student)
    student.classroom = @label
  end
end
