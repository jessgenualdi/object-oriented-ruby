# # Using arrays
# employee1 = ["Majora", "Carter", 80000, true]
# employee2 = ["Danilo", "Campos", 70000, true]
# puts employee1[0] + " " + employee1[1] + " makes " + employee1[2].to_s + " a year."
# puts "#{employee2[0]} #{employee2[1]} makes #{employee2[2]} a year."

# # Using hashes
# employee1 = {"first_name" => "Majora", "last_name" => "Carter", "salary" => 80000, "active" => true}
# employee2 = {"first_name" => "Danilo", "last_name" => "Campos", "salary" => 70000, "active" => true}
# puts "#{employee1['first_name']} #{employee1['last_name']} makes #{employee1['salary']} a year."
# puts "#{employee2['first_name']} #{employee2['last_name']} makes #{employee2['salary']} a year."

# # Using hashes with symbols
# employee1 = {:first_name => "Majora", :last_name => "Carter", :salary => 80000, :active => true}
# employee2 = {first_name: "Danilo", last_name: "Campos", salary: 70000, active: true}
# puts "#{employee1[:first_name]} #{employee1[:last_name]} makes #{employee1[:salary]} a year."
# puts "#{employee2[:first_name]} #{employee2[:last_name]} makes #{employee2[:salary]} a year."

# Using instances of a class
class Employee
  attr_reader :first_name, :last_name, :active
  attr_writer :active

  def initialize(input_options)
    @first_name = input_options[:first_name]
    @last_name = input_options[:last_name]
    @salary = input_options[:salary]
    @active = input_options[:active]
  end

  def full_name

  end

  def print_info
    puts "#{@first_name} #{@last_name} makes #{@salary} a year."
  end

  def give_annual_raise
    @salary = 1.05 * @salary
  end


  def print_info_2
    puts "Is #{@first_name} active? #{@active}."
  end

  def send_report 
    puts "Sending email..."
    # write code to send email report
    puts "Email send..."
  end

end

class Manager < Employee
  def initialize(input_options)
    @first_name = input_options[:first_name]
    @last_name = input_options[:last_name]
    @salary = input_options[:salary]
    @active = input_options[:active]
    @employees = input_options[:employees]
  end

  def send_report 
    puts "Sending email..."
    # write code to send email report
    puts "Email send..."
  end

  def print_info
    super
    puts "Hello! I'm a manager"
    puts "I manage these people: #{@employees[0].first_name}, #{@employees[1].first_name}."
  end

  def give_all_raises
    @employees.each do |employee|
      employee.give_annual_raise
    end
  end

  def fire_all_employees
    @employees.each do |employee|
      employee.active = false
    end
  end

end

employee1 = Employee.new({first_name: "Majora", :last_name => "Carter", salary: 80000, active: true})
employee2 = Employee.new(salary: 70000, first_name: "Danilo", last_name: "Campos", active: true)
employee1.print_info
employee2.print_info

manager = Manager.new(
  first_name: "Sarah",
  last_name: "Smith",
  salary: 200000,
  active: true,
  employees: [employee1, employee2]
 )


manager.print_info
manager.fire_all_employees
p manager