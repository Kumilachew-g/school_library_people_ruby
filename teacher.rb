require_relative './person'

class Teacher < Person
  def initialize(specialization:, name: 'Unknown', age:, parent_permission: true, id: nil)
    super(id: id, name: name, age: age,  parent_permission: parent_permission)
    @specialization = specialization
  end

  def can_use_services?
    true
  end
end
