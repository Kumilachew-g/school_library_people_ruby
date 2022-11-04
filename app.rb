require_relative './classroom'
require_relative './student'
require_relative './teacher'
require_relative './book'
require_relative './rental'

class App
    attr_accessor :persons, :books, :rentals

    def initialize
        @books = []
        @rentals = []
        @persons = []
        @classroom = Classroom.new('Class A')
    end

    def create_teacher(specialization, age, name)
        teacher = Teacher.new(specialization, age, name)
        @persons << teacher
        puts 'Teacher created successfuly'
      end

      def create_student(age, name, parent_permission)
        student = Student.new(@classroom, age, name, parent_permission: parent_permission)
        @persons << student
        puts 'Student created successfuly'
      end

      def create_rental(date, person, book)
        rental = Rental.new(date, person, book)
        @rentals << rental
        puts 'Rental Created Successfuly'
      end

      def create_book(title, author)
        book = Book.new(title, author)
        @books << book
        puts 'Book Created Successfuly'
      end

      def list_of_persons
        puts 'No person list found' if @persons.length.zero?
        @persons.each do |person|
          puts "[#{person.class}] Name: #{person.name}, Age: #{person.age}, Id: #{person.id} "
     end
end