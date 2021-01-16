class Role
    attr_reader :name, :manager, :employee
    attr_accessor 
    @@all = []
    def initialize(name, manager, employee)
        @name = name
        @manager = manager
        @employee = employee
        self.class.all << self
    end

    def employees
        Role.all.select {|role| role.name == name}.map {|role| role.employee}
    end

    def managers
        Role.all.select {|role| role.name == name}.map {|role| role.manager}.uniq
    end

    def self.all
        @@all
    end
end