module STUDENTTEACHER
  def student_option
    print 'Age '
    age = gets.chomp.to_i
    print 'Name '
    name = gets.chomp!
    print 'Has the parent permission [Y/N]'
    inputpermission = gets.chomp!

    case inputpermission.downcase
    when 'y'
      parent = true
    when 'n'
      parent = false
    else
      puts 'Error selectc the correct option'
    end
    @students << Student.new(age, name, ClassRoom.new(''), '', parent_permission: parent)
    @people << Student.new(age, name, ClassRoom.new(''), '', parent_permission: parent)
    puts 'Student added successfully'
  end

  def teacher_option
    print 'Age '
    age = gets.chomp.to_i
    print 'Name '
    name = gets.chomp!
    print 'Especiality '
    speciality = gets.chomp!

    @teachers << Teacher.new(age, name, speciality)
    @people << Teacher.new(age, name, speciality)
    puts 'Techaer added successfully'
  end
end

module OPTIONS
  include STUDENTTEACHER
  def option1
    if @books.empty?
      puts 'There are not books added'
    else
      puts 'Books'
      @books.each do |element|
        puts "Title  #{element.title} Author #{element.author}"
      end
    end
  end

  def option2
    if @teachers.empty? && @students.empty?
      puts 'There are not people added'
    else
      @students.each do |element|
        agep = element.age.to_s
        puts "[Student: ] Name: #{element.name} ID:  #{element.id} Age: #{agep}"
      end
      @teachers.each do |element|
        agep = element.age.to_s
        puts "[Teacher: ] Name: #{element.name} ID: #{element.id} Age: #{agep}"
      end
    end
  end

  def option3
    puts "Do you want to create a student (1) or a teacher (2)? [
      Input the number]: "
    @personoption = gets.chomp.to_i

    case @personoption
    when 1
      student_option
    when 2
      teacher_option
    else
      puts 'person number incorrect choose the options again'
    end
  end

  def option4
    print 'Title '
    title = gets.chomp!
    print 'Author '
    author = gets.chomp!
    @books << Book.new(title, author)
    puts 'Book created successfully'
  end

  def option5
    puts 'Select a book frmo the following list by number'
    @books.each_with_index do |element, index|
      puts "#{index}) Title  #{element.title} Author #{element.author}"
    end
    bookselected = gets.chomp.to_i
    puts 'Select a person from the following list by number (not id)'
    @people.each_with_index do |element, index|
      agep = element.age.to_s
      typeo = element.class.to_s
      puts "#{index}) #{typeo} Name: #{element.name} ID:  #{element.id} Age: #{agep}"
    end
    personselected = gets.chomp.to_i
    puts 'Set the current date'
    date = gets.chomp!
    puts 'Rental created successfully'
    rentalelem = Rental.new(date)
    rentalelem.book = @books[bookselected]
    rentalelem.person = @people[personselected]
    @rentals << rentalelem
    puts ' '
  end

  def option6
    @people.each do |element|
      typeo = element.class.to_s
      puts "#{typeo}Name: #{element.name} ID:  #{element.id}"
    end

    puts 'Type the id of the people: '
    idselected = gets.chomp!
    puts ' '
    @rentals.each do |element|
      if element.person.id == idselected
        puts "Date #{element.date}, Book #{element.book.title} by #{element.book.author}"
      else
        puts 'These person does not have any rentals'
      end
    end
  end

  def option7
    puts 'Thanks for visiting this app'
  end
end
