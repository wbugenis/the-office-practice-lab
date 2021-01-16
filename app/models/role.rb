class Role
    attr_reader :name, :manager, :employee
    @@all = []
    def initialize(name, manager, employee)
        @name = name
        self.class.all << self
    end

    def employees
        Role.all.map {|role| role.employee}
    end

    def managers
        Role.all.map {|role| role.manager}.uniq
    end

    def self.all
        @@all
    end
end