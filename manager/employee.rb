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
