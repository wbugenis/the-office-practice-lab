class Employee
    attr_accessor :name, :salary
    @@all = []

    def initialize(name, salary)
        @name = name
        @salary = salary
        self.class.all << self
    end

    def manager
        Role.all.find {|role| role.employee == self}.manager
    end

    def role
        Role.all.find {|role| role.employee == self}
    end

    def self.all
        @@all
    end

    def self.paid_over(pay)
        self.all.select {|employee| employee.salary > pay}
    end

    def self.find_by_department(department)
        Role.all.find {|role| role.manager.department == department}.employee
    end

    def self.search_by_role(search_role)
        Role.all.select {|role| role.name == search_role}.map {|role| role.employee}
    end

    def get_promoted(new_role)
        Role.all.delete_if{|role| role.employee == self}
        self.salary = new_role.employee.salary
        Role.new(new_role.name, self, new_role.manager)
    end

end
