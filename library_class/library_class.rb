class Library
  attr_reader :books
  def initialize(books)
    @books = books
  end

  def info_by_title(book_title)
    @books.each() { |book| if (book[:title] == book_title)
      return book
    end}
  end

  def rental_details_by_title(book_title)
    @books.each() { |book| if (book[:title] == book_title)
      return book[:rental_details]
    end}
  end

  def add_book_by_title(book_title)
    @books.push({title: book_title, rental_details: {student_name: "", date: ""}})
  end

  def set_rental_details_by_title(book_title, student, date)
    @books.each() { |book| if (book[:title] == book_title)
      book[:rental_details] = {student_name: student, date: date}
    end}
  end

end

tolkien_library = Library.new([
  {title: "Fellowship of the Ring",
  rental_details: {
    student_name: "Andrew",
    date: "13/8/18"
  }},
  {title: "The Two Towers",
  rental_details: {
    student_name: "Bob",
    date: "14/7/18"
  }},
  {title: "Return of the King",
  rental_details: {
    student_name: "Craig",
    date: "15/6/18"
  }},
  {title: "The Hobbit, or There and Back Again",
  rental_details: {
    student_name: "Dave",
    date: "16/5/18"
  }},
  {title: "The Silmarillion",
  rental_details: {
    student_name: "Eric",
    date: "17/4/18"
  }}
])

p tolkien_library.info_by_title("The Silmarillion")
p tolkien_library.add_book_by_title("The Adventures of Tom Bombadil")
p tolkien_library.info_by_title("The Silmarillion")
p tolkien_library.info_by_title("The Adventures of Tom Bombadil")
p tolkien_library.books[5]
