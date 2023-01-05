require_relative './person_class'

class Teacher < Person
  def initialize(specialization, _name = 'Unknown', age, parent_permission: true)
    super(name = 'Unknown', age, parent_permission: true)
    @specialization = specialization
  end

  def can_use_services?
    true
  end
end
