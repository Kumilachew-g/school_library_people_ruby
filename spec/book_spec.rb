require './book'
require './rental'
require './student'

describe Book do
  before :each do
    @book = Book.new 'Title', 'Author'
  end

  it 'should detect the book title' do
    expect(@book.title).to eq 'Title'
  end

  it 'should detect the book author' do
    expect(@book.author).to eq 'Author'
  end

  it 'should detect the book rentals' do
    student = Student.new(age: 20, name: 'Student')
    Rental.new('11/10/2022', @book, student)
    expect(@book.rentals.length).to eq 1
  end
end