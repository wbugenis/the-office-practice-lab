class Manager

    attr_accessor :name, :age, :department
    @@all = []

    def initialize(name, age, department)
        @name = name
        @age = age
        @department = department
        self.class.all << self
    end

    def roles
        Role.all.select {|role| role.manager == self}
    end

    def employees
        roles.map {|role| role.employee}.uniq
    end

    def self.all
        @@all
    end

    def self.all_departments
        Role.all.map {|role| role.manager.department}.uniq
    end

    def self.average_age
        Manager.all.sum {|manager| manager.age}/Manager.all.count.to_f
    end
end
