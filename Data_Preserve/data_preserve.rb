require './book'

module DataPreserver
  #  Add load_books method

  def load_books
    file = 'books.json'
    data = []
    if File.exist?(file) && File.read(file) != ''
      JSON.parse(File.read(file).to_json).each do |item|
        data.push(Book.new(item.title, item.author))
      end
    end

    data
  end

  def get_book_by_title(title)
    @books.map { |_item| item.title == title }
  end

  # Add load_peoble method
  def load_people
    data = []
    file = './data/people.json'
    if File.exist?(file) && File.read(file) != ''
      JSON.parse(File.read(file)).each do |person|
        if person['class'] == 'Student'
          student = Student.new(person['age'], person['name'], person['classroom'],
                                parent_permission: person['parent_permission'])
          student.id = person['id']
          data << student
        end
        next unless person['class'] == 'Teacher'

        teacher = Teacher.new(person['age'], person['specialization'], person['name'],
                              parent_permission: person['parent_permission'])
        teacher.id = person['id']
        data << teacher
      end
    end
    data
  end

  # Add load_rentals method
end
