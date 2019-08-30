require './lib/employee'
require './lib/department'
require 'pry'
require 'minitest/autorun'
require 'minitest/pride'

class EmployeeTest < MiniTest::Test
  def setup
    @david = Employee.new({name: "David Lopez", age: "19", salary: "50000"})
    @scott = Employee.new({name: "Scott Scoot", age: "28", salary: "40000"})
    @dairy = Department.new("Dairy")
  end

  def test_it_exists
    assert_instance_of Department, @dairy
  end

  def test_it_has_attributes
    assert_equal "Dairy", @dairy.name
    assert_equal [], @dairy.employees
    assert_equal 0, @dairy.expenses
  end

  def test_it_hires
    @dairy.hire(@david)
    assert_equal [@david], @dairy.employees
  end

  def test_it_adds_expenses
    @dairy.expense(100)
    assert_equal 100, @dairy.expenses
  end
end
