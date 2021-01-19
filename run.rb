require_relative "lib/Manager"
require_relative "lib/Employee"
require 'pry'

manager1 = Manager.new("manager1", "electronics", 27)
manager2 = Manager.new("manager2", "Produce", 30)
manager3 = Manager.new("manager3", "Front End", 36)

employee1 = Employee.new("employee1", 23000)
employee2 = Employee.new("employee2", 23500)
employee3 = Employee.new("employee3", 28100)
employee4 = Employee.new("employee4", 24500)

manager1.hire_employee("employee_11",28000)
manager1.hire_employee("employee_12",28500)

manager2.hire_employee("employee_21",24000)
manager2.hire_employee("employee_22",24500)
manager2.hire_employee("employee_23",23500)
manager2.hire_employee("employee_24",23000)

manager3.hire_employee("employee_31",16000)
manager3.hire_employee("employee_32",16500)


#binding.pry
puts "done"
