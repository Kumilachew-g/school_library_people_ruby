def menu(option, app)
  case option
  when 1
    list_books(app)
  when 2
    list_person(app)
  when 3
    add_person(app)
  when 4
    add_book(app)
  when 5
    add_rental(app)
  when 6
    display_rentals_by_id(app)
  end
end
