require_relative './personClass'

class Teacher < Person

    def initialize(specialization, name="Unknown", age, parent_permission:true)
        super(name="Unknown",age,parent_permission:true)
        @specialization = specialization
    end
    
    def can_use_services?
        return true
    end

end