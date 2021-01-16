class Employee
    attr_accessor :name, :salary
    @@all = []

    def initialize(name, salary)
        @name = name
        @asalary = salary
        self.class.all << self
    end

    def managers

    end

    def roles

    end
end
