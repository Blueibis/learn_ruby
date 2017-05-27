class Temperature

@@temp = {}

attr_accessor :temp

  def initialize(temp)
    @temp = temp
  end

  def f_temp?
    if @temp.keys == [:f]
      true
    elsif c_temp?
    else false
    end
  end

  def c_temp?
    if @temp.keys == [:c]
      true
    elsif f_temp?
    else false
    end
  end

  def to_fahrenheit
    if f_temp?
      @temp[:f]
    else
      ctof(@temp[:c])
    end
  end

  def to_celsius
     if c_temp?
       @temp[:c]
     else
       ftoc(@temp[:f])
     end
   end

  def ftoc(ftemp)
    result = (ftemp - 32 ) * (5.0/9.0)
    result.round(0)
  end

  def ctof(ctemp)
    result = ctemp * (9.0/5.0) + 32
    result.round(0)
  end

  def self.in_celsius(temp)
    new_temp = Temperature.new({:c => temp})
    new_temp
  end

  def self.in_fahrenheit(temp)
    new_temp = Temperature.new({:f => temp})
    new_temp
  end

  def self.to_celsius
    if @@temp.keys == [:c]
      return @@temp[:c]
    else
      ctof(@@temp[:f])
    end
  end

  def self.to_fahrenheit
    if @@temp.keys == [:f]
      return @@temp[:f]
    else
      ftoc(@@temp[:c])
    end
  end
end

class Celsius < Temperature
attr_accessor :temp
  def initialize(temp)
    @temp = {}
    @temp[:c] = temp
  end
end

class Fahrenheit < Temperature
attr_accessor :temp
  def initialize(temp)
    @temp = {}
    @temp[:f] = temp
  end
end
