require './employee.rb'
require './EmailReporter.rb'

class Manager < Employee
  def initialize(input_options)
    @first_name = input_options[:first_name]
    @last_name = input_options[:last_name]
    @salary = input_options[:salary]
    @active = input_options[:active]
    @employees = input_options[:employees]
  end

   include EmailReporter

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