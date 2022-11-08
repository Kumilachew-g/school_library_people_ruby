def display_rentals_by_id(app)
    puts 'Enter person id:'
    id = gets.chomp.to_i
    app.display_rentals_by_person_id(id)
  end