require './person'

describe Person do
  before :each do
    @person = Person.new age: 10, name: 'Henok', id: nil

    @person_two = Person.new age: 25, name: 'Haddis Getie Tsega', id: nil
  end

  it 'should validate the age of the person created' do
    expect(@person.age).to eq 10
    expect(@person_two.age).to eq 25
  end

  it 'should validate the name of the person created' do
    expect(@person.name).to eq 'Henok'
    expect(@person_two.name).to eq 'Haddis Getie Tsega'
  end

  it 'should validate the corrector method' do
    expect(@person.validate_name).to eq 'Henok'
    expect(@person_two.validate_name).to eq 'Haddis get'
  end

  it 'should validate the can_use_services method' do
    expect(@person.can_use_services?).to eq true
    expect(@person_two.can_use_services?).to eq true
  end
end