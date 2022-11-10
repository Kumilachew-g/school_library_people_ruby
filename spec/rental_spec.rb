require './rental'
require './student'
require './book'

describe Rental do
  before :each do
    @book = Book.new 'Title', 'Author'
    @student = Student.new age: 20, name: 'Haddis'
    @rental = Rental.new '11/10/2022', @book, @student
  end

  it 'should detect the rental date' do
    expect(@rental.date).to eq '11/10/2022'
  end

  it 'should detect the rental book' do
    expect(@rental.book.rentals.include?(@rental)).to eq true
  end

  it 'should detect the rental student' do
    expect(@rental.person.rentals.include?(@rental)).to eq true
  end
end