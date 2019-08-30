class Department
  attr_reader :name, :employees, :expenses

  def initialize(name)
    @name = name
    @employees = Array.new
    @expenses = 0
  end

  def hire(employee)
    @employees << employee
  end

  def expense(cost)
    @expenses += cost
  end
end
