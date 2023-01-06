require_relative './person_class'

class Student < Person
  attr_reader :classroom

  def initialize(classroom, age, _name = 'Unknown', _parent_permission: true)
    super(_name = 'Unknown', age, parent_permission: true)
    @classroom = classroom
  end

  def classroom=(classroom)
    @classroom = classroom
    classroom.students.push(self) unless classroom.students.include?(self)
  end

  def play_hooky
    '¯(ツ)/¯'
  end
end
