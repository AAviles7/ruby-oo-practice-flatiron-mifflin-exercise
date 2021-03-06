# require "./Employee.rb"

class Manager
    attr_accessor :name, :department
    attr_reader :age, :employees
    @@all = []
    @@all_departments = []

    def initialize(name, department, age)
        @name = name
        @department = department
        @age = age
        @employees = []
        @@all.push(self)
        @@all_departments.push(department)
    end

    def self.all
        @@all
    end

    def hire_employee(name, salary)
        hired = Employee.new(name, salary)
        hired.manager = self
        @employees.push(hired)
    end

    def self.all_departments
        @@all_departments
    end

    def self.average_age
        temp = 0
        @@all.each{|manager| temp += manager.age}
        ans = temp/@@all.length
    end

end