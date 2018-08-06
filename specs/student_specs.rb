require('minitest/autorun')
require('minitest/rg')
require_relative('../student.rb')
class StudentTest < MiniTest::Test

def test_get_student_name
  student = Student.new("Filip", "E24")
  assert_equal("Filip", student.get_name)
end

def test_get_student_cohort
  student = Student.new("Filip", "E24")
  assert_equal("E24", student.get_cohort)
end
def test_change_name
  student = Student.new("Filip", "E24")
  student.change_name("Ben")
  assert_equal("Ben", student.get_name)
end
end
