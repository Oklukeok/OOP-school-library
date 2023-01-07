require './person_class'
class CapitalizeDecorator < Person
  def initialize(nameable)
    @nameable = nameable
    super(nameable)
  end

  def correct_name
    @nameable.correct_name.upcase
  end
end

person = Person.new('carlitos', 10, 'juan', parent_permission: false)
capital = CapitalizeDecorator.new(person)
puts capital.correct_name
