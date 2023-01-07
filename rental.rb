require './person_class'
require './book'
class Rental
  attr_accessor :date, :book, :person

  def initialize(date)
    @date = date
    @book = book
    @person = person
  end
end