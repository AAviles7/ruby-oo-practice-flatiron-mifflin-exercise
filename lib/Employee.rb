require "./Manager.rb"

class Employee
    attr_accessor :name, :manager
    attr_reader :salary
    @@all = []

    def initialize(name, salary)
        @name = name
        @salary = salary
        @@all.push(self)
    end

    def manager_name
        return manager.name
    end

    def self.all
        @@all
    end

    def paid_over(salary)
        return @@all.select{|employee| employee.salary > salary}
    end

    def find_by_department(department)
        all = Manager.all
        manage = all.find{|manager| manager.department == department}
        return manage.employees[0]
    end

    def tax_bracket
        return @@all.select{|employee| employee.salary.between?(self.salary-1000,self.salary+1000)}
    end

end