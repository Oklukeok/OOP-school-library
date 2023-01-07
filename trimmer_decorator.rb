require './person_class'

class TrimmerDecorator < Person
  def initialize(nameable)
    @nameable = nameable
    super(nameable)
  end

  def correct_name
    return @nameable.correct_name.slice(0, 10) if @nameable.correct_name.length > 10

    @nameable.correct_name
  end
end
person = Person.new('jose juan zepeda Romero', 10, 'juan', parent_permission: false)
trimer = TrimmerDecorator.new(person)
puts trimer.correct_name