require './app'

class Main
    def display_options
        puts ' '
        puts 'Please choose an option by entering a number:'
        puts '1 - List all books'
        puts '2 - List all people'
        puts '3 - Create a person'
        puts '4 - Create a book'
        puts '5 - Create a rental'
        puts '6 - List all rentals for a given person id'
        puts '7 - Exit'
      end

      def add_book(app)
        puts 'Title: '
        title = gets.chomp
        puts 'Author: '
        author = gets.chomp
        app.create_new_book(title, author)
      end
end