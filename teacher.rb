require './person'

class Teacher < person
    def initialize(specialization, age, name = 'Unknown', parent_permission = 'true')
        super(age, name, parent_permission)
        @specialization = specialization
      end
    
end