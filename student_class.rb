require_relative './person_class'

class Student < Person
  def initialize(classroom, age, name = 'Unknown', parent_permission: true)
    super(name = 'Unknown', age, parent_permission: true)
    @classroom = classroom
  end

  def play_hooky
    '¯(ツ)/¯'
  end
end
