require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

manager1 = Manager.new("Michael", 37, "paper")
manager2 = Manager.new("Jim", 33, "sales")

employee1 = Employee.new("Pam", 50_000)
employee2 = Employee.new("Angela", 60_000)

role1 = Role.new("Sales")
role2 = 
# think how many instances of what you need -- how to test your code in a best manner

binding.pry
0 #leave this here to ensure binding.pry isn't the last line