class Employee
    attr_accessor :name, :salary
    @@all = []

    def initialize(name, salary)
        @name = name
        @asalary = salary
        self.class.all << self
    end

    def manager
        Role.all.select {|role| role.employees == self}.manager
    end

    def role
        
    end

    def self.all
        @@all
    end

    def self.paid_over

    end

    def self.find_by_department

    end

    def self.search_by_role

    end

    def get_promoted

    end

end
