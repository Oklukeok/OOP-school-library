require './person_class'
class Teacher < Person
  attr_accessor :specialization

  def initialize(age, name, specialization)
    super(age, name, true)
    @specialization = specialization
  end

  def can_use_services?
    true
  end
end