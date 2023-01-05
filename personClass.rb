class Person

    attr_accessor :id, :name, :age

    def initialize(name="Unknown",age,parent_permission:true)
        @id = Random.rand(1..1000)
        @name = name
        @age = age
        @parent_permission = parent_permission
    end

    def is_of_age?

        if age>=18
            return true
        else
            return false
        end

    end

    def can_use_services?
        if age>=18 || parent_permission==true
            return true
        else
            return false
        end
    end

end