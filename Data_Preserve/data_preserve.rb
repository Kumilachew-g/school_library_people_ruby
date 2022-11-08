require './book'

module DataPreserver
  #  Add load_books method

  def load_books
    file = 'books.json'
    data = []
    if File.exist?(file) && File.read(file) != ''
      JSON.parse(File.read(file).to_json).each do |item|
        data.push(Book.new(item.title, item.author))
      end
    end

    data
  end

  def get_book_by_title(title)
    @books.map { |_item| item.title == title }
  end

  # Add load_peoble method

  # Add load_rentals method
end
