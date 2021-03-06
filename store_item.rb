  # yoga_mat = {"color" => "yellow", "length" => "extra long", "price" => 100}
# yoga_mat2 = {"color" => "pink", "length" => "medium", "price" => 80}
# yoga_mat3 = {"color" => "blue", "length" => "short", "price" => 70}

# yoga_mat4 = {:color => "green", length: "extra long", :price => 75.99}
# yoga_mat5 = {:color => "black", length: "medium", :price => 300}
# yoga_mat6 = {:color => "silver", length: "medium", :price => 85}


# puts  "The " + yoga_mat["length"] + ", " + yoga_mat["color"] + " yoga mat is " + yoga_mat["price"].to_s + "."

# puts "The " + yoga_mat5[:length] + ", " + yoga_mat5[:color] + " yoga mat is " + yoga_mat5[:price].to_s + "."


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


class Life < Items

  def shelf_life
    @shelf_life
  end

  def initialize(input_options)
    super
    @shelf_life = input_options[:shelf_life]
  end

  def print_info
    puts "The #{color}, #{length} yoga mat is #{price} and lasts #{shelf_life}."   
  end
end

# item1 = Items.new("green", "long", 100)
item2 = Life.new({:color => "green", :price => 50, length: "extra long", shelf_life: "2 years"})

item2.sale
# item1.print_info
item2.print_info