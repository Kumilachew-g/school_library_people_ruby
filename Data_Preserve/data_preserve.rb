require 'json'
require './student'
require './teacher'
require './rental'
require './book'

module DataPreserver
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
    file = 'people.json'
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

  def save_people
    data = []
    @people.each do |person|
      if person.instance_of?(Teacher)
        data.push({ id: person.id, name: person.name, age: person.age, parent_permission: person.parent_permission,
                    class: person.class, specialization: person.specialization })
      end
      if person.instance_of?(Student)
        data.push({ id: person.id, name: person.name, age: person.age, parent_permission: person.parent_permission,
                    class: person.class })
      end
    end
    File.write('people.json', JSON.generate(data))
  end

  # Add load_rentals method
  def get_book(title)
    @books.each { |book| return book if book.title == title }
  end

  def get_person(id)
    @people.each { |person| return person if person.id == id }
  end

  def load_rentals
    data = []
    file = 'rentals.json'
    if File.exist?(file) && File.read(file) != ''
      JSON.parse(File.read(file)).each do |rental|
        rental = Rental.new(rental['date'], get_book(rental['book']), get_person(rental['person']))
        data << rental
      end
    end
    data
  end

  def save_rentals
    data = []
    @rentals.each do |rental|
      data << { date: rental.date, book: rental.book.title, person: rental.person.id }
    end
    File.write('rentals.json', JSON.generate(data))
  end
end
