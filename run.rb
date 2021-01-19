require_relative "lib/Manager"
require_relative "lib/Employee"
require 'pry'

manager1 = Manager.new("manager1", "electronics", 27)
manager2 = Manager.new("manager2", "Produce", 30)
manager3 = Manager.new("manager3", "Front End", 36)

manager1.hire_employee("employee 11",28000)
manager1.hire_employee("employee 12",28500)

manager2.hire_employee("employee 21",24000)
manager2.hire_employee("employee 22",24500)
manager2.hire_employee("employee 23",23500)
manager2.hire_employee("employee 24",23000)

manager3.hire_employee("employee 31",16000)
manager3.hire_employee("employee 32",16500)




#binding.pry
puts "done"
