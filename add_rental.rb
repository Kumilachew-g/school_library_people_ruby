def add_rental(app)
    puts 'Books is empity ' if app.books.length.zero?
    puts 'Person is empity' if app.list_persons.length.zero?
    puts 'Select a book from the following list by number: '
    app.list_books.each_with_index do |book, index|
      puts "#{index}) Title: \"#{book.title}\", Author: #{book.author}"
    end
    book_index = gets.chomp.to_i
    book = app.books[book_index]

    puts 'Select a person from the following list by number:'
    app.list_persons.each_with_index do |person, index|
      puts "#{index}) [#{person.class}] Name: #{person.name}, ID: #{person.id}, Age: #{person.age}"
    end

    person_index = gets.chomp.to_i
    person = app.persons[person_index]
    puts 'Date:'
    date = gets.chomp
    app.create_rental(date, person, book)
  end