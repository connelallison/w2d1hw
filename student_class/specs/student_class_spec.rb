require("minitest/autorun")
require("minitest/rg")
require_relative("../student_class.rb")

class StudentClassTest < MiniTest::Test

  def setup
    @student_1 = Student.new("Connel", :G10)
  end

  def test_get_name
    assert_equal(@student_1.name(), "Connel")
  end

  def test_get_cohort
    assert_equal(@student_1.cohort(), :G10)
  end

  def test_set_name
    @student_1.set_name("Bob")
    assert_equal(@student_1.name(), "Bob")
  end

  def test_set_cohort
    @student_1.set_cohort(:G9)
    assert_equal(@student_1.cohort(), :G9)
  end

  def test_talk
    assert_equal(@student_1.talk(), "I can talk.")
  end

  def test_fav_language
    assert_equal(@student_1.fav_language("machine code"), "Connel's favourite language is machine code.")
  end

end
