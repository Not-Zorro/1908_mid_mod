require './lib/employee'
require 'pry'
require 'minitest/autorun'
require 'minitest/pride'

class EmployeeTest < MiniTest::Test
  def setup
    @david = Employee.new({name: "David Lopez", age: "19", salary: "50000"})
  end

  def test_it_exists
    assert_instance_of Employee, @david
  end

  def test_it_has_attributes
    assert_equal "David Lopez", @david.name
    assert_equal "19", @david.age
    assert_equal "50000", @david.salary
  end
end
