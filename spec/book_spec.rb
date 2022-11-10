require './book'
require './student'
require './rental'

describe Book do
  title = 'The Great Gatsby'
  author = 'F. Scott Fitzgerald'
  let(:book) { Book.new(title, author) }

  name = 'John Doe'
  age = 20
  classroom = '1A'
  let(:student) { Student.new(age, name, classroom) }

  it 'should be a book' do
    expect(book).to be_a(Book)
  end

  it 'should have a title' do
    expect(book.title).to eq(title)
  end

  it 'should have an author' do
    expect(book.author).to eq(author)
  end

  it 'should have a list of rentals' do
    empty_rentals = []
    expect(book.rentals).to eq(empty_rentals)
  end
end
