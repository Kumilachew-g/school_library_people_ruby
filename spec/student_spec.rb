require './student'
require './classroom'

describe Student do
    before :each do
      @classroom = Classroom.new 'label'
      @student = Student.new age: 25, name: 'Henok'
    end
  
    it 'Should validate the student age' do
      expect(@student.age).to eq 25
    end
  
    it 'Should validate the play_hooky method' do
      expect(@student.play_hooky).to eq '¯\(ツ)/¯'
    end
  
    it 'Should validate the join_classroom method' do
      @student.join_classroom(@classroom)
      expect(@classroom.students.include?(@student)).to eq true
    end
  end