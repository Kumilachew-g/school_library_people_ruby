require_relative './classroom'
require_relative './student'
require_relative './teacher'
require_relative './book'
require_relative './rental'

class App
    attr_accessor :persons, :books, :rentals
end