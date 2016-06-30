module EmailReporter
  def send_report 
    puts "Sending email..."
    # write code to send email report
    puts "Email send..."
  end

  def receive_report
    puts "getting report"
  end
end

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
end

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


class Intern < Employee
  include EmailReporter
end

intern = Intern.new(first_name: "Adrienna", last_name: "Lowe", salary: 33000, active: true)
intern.send_report
intern.print_info
intern.receive_report
