require './teacher'

describe Teacher do
    before :each do
      @teacher = Teacher.new age: 30, name: 'Teacher', specialization: 'Chemistery'
    end
  
    it 'should detect the teacher age' do
      expect(@teacher.age).to eq 30
    end
  
    it 'should detect the teacher name' do
      expect(@teacher.name).to eq 'Teacher'
    end
  
  end