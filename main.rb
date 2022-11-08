require './app'
require './display_options'
require './menu'
require './display_rentals_by_id'
require './add_rental'
require './list_books'

class Main
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
      app.create_teacher(specialization, age, name)
    end
    puts 'You choose invalid menu, Return to menu'
  end

  def add_book(app)
    puts 'Title: '
    title = gets.chomp
    puts 'Author: '
    author = gets.chomp
    app.create_book(title, author)
  end

  def main
    app = App.new
    option = 0
    puts 'Welcome to School Library Rental App!'
    while option != 7
      display_options
      option = gets.chomp.to_i
      if option >= 0 && option < 7
        menu(option, app)
      elsif option == 7
        puts 'Thanks for using this App!'
      else
        puts 'Invalid option'
      end
    end
  end
end

main_apps = Main.new
main_apps.main
