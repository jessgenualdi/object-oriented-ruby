require './employee.rb'
require './EmailReporter.rb'

class Intern < Employee
  include EmailReporter
end