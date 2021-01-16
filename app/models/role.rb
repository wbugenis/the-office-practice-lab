class Role
    attr_reader :name, :manager :employee
    @@all = []
    def initialize(name, manager, employee)
        @name = name
        self.class.all << self
    end

    def employees

    end

    def managers

    end

    def self.all
        self.class.all
    end

end