require("minitest/autorun")
require("minitest/rg")
require_relative("../library_class.rb")

class LibraryClassTest < MiniTest::Test

  def setup

    @tolkien_library = Library.new([
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

  end

def test_get_book
  assert_equal(@tolkien_library.books[0], {title: "Fellowship of the Ring",
  rental_details: {
    student_name: "Andrew",
    date: "13/8/18"
  }})
end

def test_info_by_title
  result = @tolkien_library.info_by_title("The Silmarillion")
  assert_equal({title: "The Silmarillion",
  rental_details: {
    student_name: "Eric",
    date: "17/4/18"
  }}, result)
end

def test_rental_details_by_title
  result = @tolkien_library.rental_details_by_title("The Hobbit, or There and Back Again")
  assert_equal({
    student_name: "Dave",
    date: "16/5/18"
  }, result)
end

def test_add_book_by_title
  @tolkien_library.add_book_by_title("The Adventures of Tom Bombadil")
  result = @tolkien_library.info_by_title("The Adventures of Tom Bombadil")
  assert_equal({title: "The Adventures of Tom Bombadil",
  rental_details: {
    student_name: "",
    date: ""
  }}, result)
end

def test_set_rental_details_by_title
  @tolkien_library.set_rental_details_by_title("The Silmarillion", "Frank", "18/3/19")
  result = @tolkien_library.info_by_title("The Silmarillion")
  assert_equal({title: "The Silmarillion",
  rental_details: {
    student_name: "Frank",
    date: "18/3/19"
  }}, result)
end

end
