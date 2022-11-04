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
end