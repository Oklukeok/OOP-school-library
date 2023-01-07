require './person_class'

class Student < Person
  attr_accessor :classroom

  def initialize(age, name, classroom, nameable = 'Unknow', parent_permission: true)
    super(age, name, nameable, parent_permission: parent_permission)
    @classroom = classroom.label
  end

  def play_hooky
    '¯(ツ)/¯'
  end
end