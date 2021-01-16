class Manager

    attr_accessor :name, :age, :departmemt
    @@all = []

    def initialize(name, age, department)
        @name = name
        @age = age
        @departmemt
        self.class.all << self
    end

    def roles
        Role.all.select {|position| position.manager == self}
    end

    def employees
        roles.map {|position| position.employee.uniq}
    end

    def self.all
        self.class.all
    end

    def average_age
        @@all.select do |age|

    end


end
