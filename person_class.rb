require 'securerandom'
require './nameable'

class Person < Nameable
  # Atributos de instancia
  attr_accessor :name, :age, :rentals, :parent_permission
  attr_reader :id

  def initialize(age = 0, name = 'Unknown', nameable = 'Unknown', parent_permission: true)
    @id = SecureRandom.uuid
    @age = age
    @name = name
    @nameable = nameable
    @parent_permission = parent_permission
    @rentals = []
    super()
  end

  # Método privado
  private

  def of_age?
    @age >= 18
  end

  # Método público
  public

  def can_use_services?
    of_age? || @parent_permission
  end

  def correct_name
    @nameable
  end

  def add_rentals(rental)
    @rentals.push(rental)
    rental.person = self
  end
end
