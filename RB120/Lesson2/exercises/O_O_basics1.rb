# 1

# puts "Hello".class
# puts 5.class
# puts [1, 2, 3].class

# 2

module Walkable
  def walk
    puts "Let's go for a walk!"
  end
end

class Cat
  attr_accessor :name
  include Walkable

  def initialize(name)
    @name = name
  end

  def greet
    puts "I am #{name}!"
  end

end

kitty = Cat.new("Sophie")
kitty.greet
kitty.name = 'Luna'
kitty.greet
kitty.walk