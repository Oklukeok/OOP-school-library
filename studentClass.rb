require_relative './personClass'

class Student < Person

    def initialize(classroom, name="Unknown", age, parent_permission:true)
        super(name="Unknown",age,parent_permission:true)
        @classroom = classroom
    end
    
    def play_hooky
        return "¯\(ツ)/¯"
    end

end