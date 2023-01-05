class Person
  attr_accessor :id, :name, :age

  def initialize(age, name = 'Unknown', parent_permission: true)
    @id = Random.rand(1..1000)
    @name = name
    @age = age
    @parent_permission = parent_permission
  end

  def is_of_age?
    age >= 18
  end

  def can_use_services?
    age >= 18 || parent_permission == true
  end
end
