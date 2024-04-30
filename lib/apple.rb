# frozen_string_literal: true

GLOBAL_CONSTANT = 1000
# A new class
class Customer
  VAR1 = 100
  @@num_customers = 0
  def initialize(id, name)
    @id = id
    @name = name
    @@num_customers += 1
  end

  def self.num_customers
    "@@num_customers: #{@@num_customers}"
  end

  def greetings(*args)
    "args: #{args[0]} | num_customers: #{self.class.class_variable_get(:@@num_customers)}, self: #{self}"
  end

  def display_details
    puts "id:  #{@id}"
    puts "name:  #{@name}"
    puts "VAR1: #{VAR1}"
  end

  def self.decimal_to_binary(decimal_number)
    binary_digits = []

    while decimal_number.positive?
      binary_digits << decimal_number % 2
      decimal_number /= 2
    end

    binary_digits.reverse.join
  end
end

c1 = Customer.new(1, 'lalo')
c2 = Customer.new(2, 'angi')
c3 = Customer.new(3, 'hono')
# puts c1.greetings('Hi')
# puts Customer.class_variable_get(:@@num_customers)
# puts c2.display_details
# puts Customer::VAR1
# puts ::GLOBAL_CONSTANT
# puts self, true, false, nil
# puts __FILE__, __LINE__
# puts (-2**29).class.ancestors
# puts (1 / 2.0).class
# puts 4E10
# puts (10**20) * 4.0
# hash = { a: 1, b: 'lalo' }
# h1 = { a: 2, b: 'angi' }
# puts hash, hash.class, h1, h1.class
# hash.each do |k, v|
#   puts "key: #{k}, value: #{v}"
# end
# (1...5).each do |n|
#   p n
# end
# p 2 <=> 2, 2 <=> 1, (2 <=> 3)
# p 1.eql?(1.0)
# a1 = (1..4).to_a
# puts (1..4) === 2
# puts [1, 2, 3, 4] === [1, 2, 3]
# puts '-------------------------------------'
# s1, s2 = 'hello world', 'hello world'
# puts s1, s2, s1.object_id, s2.object_id, s1 == s2, s1 === s2, s1.eql?(s2), s1.equal?(s2)
# dec = 3
# puts dec.to_s(2)
# puts Customer.decimal_to_binary(3)
# puts defined? a1

CONST = ' out there'

class Inside_one
  CONST = proc { 5 + 6 }

  def where_is_my_const
    "#{::CONST} Inside_one"
  end
end

class Inside_two
  CONST = ' Inside_two'

  def where_is_my_const
    CONST
  end
end

# puts Inside_one.new.where_is_my_const
# puts Inside_two.new.where_is_my_const
# puts Object::CONST + Inside_two::CONST
# puts Inside_one::CONST
# puts Inside_one::CONST.call

# Class to test conditionals
class Conditional
  def self.get_if(x, y)
    if x > 2
      puts "#{x} is greater than 2"
    elsif x == 1
      puts "#{x} is equal to 1"
    else
      puts "#{x} is less or equal than 2"
    end
  end

  def self.get_unless(x)
    if x > 2
      puts "#{x} is greater than 2"
    else
      puts "#{x} is less than 2"
    end
  end

  def self.get_when(age)
    case age
    when 0..2
      puts 'baby'
    when 3..6
      puts 'little child'
    when 7..12
      puts 'child'
    when 13..18
      puts 'youth'
    else
      puts 'adult'
    end
  end
end

class Loop
  @@i = 0

  def self.get_while(num)
    while @@i < num
      puts "inside a while: #{@@i}"
      @@i += 1
    end
  end

  def self.get_begin(num)
    begin
      puts "inside a begin: #{@@i}"
      @@i += 1
    end while @@i < num
  end

  def self.get_until(num)
    until @@i > num
      puts "inside an until: #{@@i}"
      @@i += 1
    end
  end

  def self.get_for(num)
    for i in 0...num
      puts "inside a for: #{i}"
    end
  end

  def self.get_each(num)
    (0...num).each do |i|
      break if i == 4
      next if i == 2


      puts "inside an each: #{i}"
    end
  end

  def self.get_return(*tests)
    [tests[0], tests[1], tests[2]]
  end

  def self.get_block(&block)
    puts 'get_block'
    yield 'lalo'
    puts 'get_block Again'
    yield 'angi'
    puts block.call 'hono'
  end
end

# puts Loop.get_block {|name| puts "Hi #{name}"}

module Trig
  PI = 3.14159

  def self.sin(x)
    puts Math.sin(x)
  end
end

# puts Trig::PI
# Trig.sin(90)
