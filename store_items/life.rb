require './items.rb'

module JAG
  class Life < Items

    def shelf_life
      @shelf_life
    end

    def initialize(input_options)
      super
      @shelf_life = input_options[:shelf_life]
    end

    def print_info
      puts "The #{color}, #{length} yoga mat is #{price} dollars and lasts #{shelf_life} years."   
    end
  end
end