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

      def add_person(app)
        puts 'Do you want to create a student (1) or a teacher (2)? [Input the number]: '
        type = gets.chomp.to_i
        puts 'Name: '
        name = gets.chomp
        puts 'Age: '
        age = gets.chomp.to_i
        if type == 1
          puts 'Has parent permission? [Y/N]: '
          parent_permission = gets.chomp
          app.create_new_student(age, name, parent_permission: parent_permission.downcase == 'y')
        else
          puts 'Specialization: '
          specialization = gets.chomp
          app.create_new_teacher(specialization, age, name)
        end
        puts 'You choose invalid menu, Return to menu'
      end

      def list_person(app)
        app.list_persons
      end

      def list_books(app)
        app.list_books
      end
end