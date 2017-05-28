require 'pry'          # => true
class Changer
@@quarter = 25         # => 25
@@dime = 10            # => 10
@@nickel = 5           # => 5
@@penny = 1            # => 1
@@change = []          # => []
attr_accessor :amount  # => nil

  def initialize(amount)
    @@amount = amount     # => 50
  end                     # => :initialize

  def self.make_change(amount)
    @@change = []
    new_amount = Changer.new(amount)  # => #<Changer:0x00557ff7eb18e8>
    compute                           # => [25, 25]
    @@change                          # => [25, 25]
  end                                 # => :make_change

  def self.compute
    increment_quarter  # => nil
    increment_dime     # => 0
    increment_nickel   # => 0
    increment_penny    # => 0
    @@change           # => [25, 25]
  end                  # => :compute

  def self.increment_quarter
    until @@amount < 25       # => false, false, true
      @@amount -= 25          # => 25,   0
      @@change << 25          # => [25], [25, 25]
    end                       # => nil
  end                         # => :increment_quarter

  def self.increment_dime
    until @@amount < 10    # => true
      @@amount -= 10
      @@change << 10
    end                    # => nil
    @@amount               # => 0
  end                      # => :increment_dime

  def self.increment_nickel
    until @@amount < 5    # => true
      @@amount -= 5
      @@change << 5
    end                      # => nil
    @@amount                 # => 0
  end                        # => :increment_nickel

  def self.increment_penny
    until @@amount == 0     # => true
      @@amount -= 1
      @@change << 1
    end                     # => nil
    @@amount                # => 0
  end                       # => :increment_penny
end                         # => :increment_penny
     # => [25, 25]
