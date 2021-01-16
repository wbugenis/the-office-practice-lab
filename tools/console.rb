require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

manager1 = Manager.new("Michael", 37, "paper")
manager2 = Manager.new("Jim", 33, "sales")
manager3 = Manager.new("Toby", 45, "HR")

employee1 = Employee.new("Pam", 50_000)
employee2 = Employee.new("Angela", 60_000)
employee3 = Employee.new("Dwight", 55_000)
employee4 = Employee.new("Kevin", 59_999)

role1 = Role.new("Role1", manager1, employee1)
role2 = Role.new("Role2", manager2, employee2)
role3 = Role.new("Role2", manager2, employee3)
role4 = Role.new("Role1", manager3, employee4)

# think how many instances of what you need -- how to test your code in a best manner

binding.pry
0 #leave this here to ensure binding.pry isn't the last line