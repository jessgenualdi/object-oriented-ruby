module JAG
  class Items
    attr_reader :color, :length, :price
    # attr_reader will type out def color ..@color ..end ...

    def initialize(input_options)
      @color = input_options[:color]
      @length = input_options[:length]
      @price = input_options[:price]
    end
    
    def sale
      @price = 0.75 * @price 
    end
  end
end