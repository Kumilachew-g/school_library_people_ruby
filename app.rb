require './classroom'
require './student'
require './teacher'
require './book'
require './rental'
require_relative './data_preserve'

class App
  attr_accessor :persons, :books, :rentals

  include DataPreserver

  def initialize
    @persons = []
    @books = []
    @rentals = []
    @classroom = Classroom.new('Class A')
  end

  def create_new_student(name, age, parent_permission)
    student = Student.new(name: name, age: age.to_i, parent_permission: parent_permission)
    @persons << student
    puts 'Student Created Successfuly'
  end

  def create_teacher(specialization, name, age)
    teacher = Teacher.new(specialization: specialization, name: name, age: age.to_i)
    @persons << teacher
    puts 'Teacher Created Successfuly'
    save_people
  end

  def create_book(title, author)
    book = Book.new(title, author)
    @books << book
    puts 'Book Creted Successfuly'
    save_books
  end

  def create_rental(date, person, book)
    rental = Rental.new(date, person, book)
    @rentals << rental
    puts 'Rental Created Successfuly'
    save_rental
  end

  def list_books
    puts 'No book lists found!' if @books.length.zero?
    @books.each { |book| puts "Book Title: \"#{book.title}\", Book Author: #{book.author}" }
  end

  def list_persons
    puts 'No person lists found' if @persons.length.zero?
    @persons.each do |person|
      puts "[#{person.class}] Name: #{person.name}, Age: #{person.age}, Id: #{person.id} "
    end
  end

  def display_rentals_by_person_id(person_id)
    person_rentals = @rentals.select { |rental| rental.person.id == person_id }
    person_rentals.each do |rental|
      puts " Book: #{rental.book.title}, Writen By: #{rental.book.author}, Date: #{rental.date}"
    end
  end
end
