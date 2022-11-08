require_relative 'person'

class Student < Person
  attr_reader :classroom

  def initialize(classroom: nil, age: age, name: name, parent_permission: true, id: nil)
    super(id: id, age: age, name: name, parent_permission: parent_permission)
    @classroom = classroom
  end

  def play_hooky
    '¯\(ツ)/¯'
  end

  def classroom=(classroom)
    @classroom = classroom
    classroom.students.push(self) unless classroom.students.includes?(self)
  end
end
