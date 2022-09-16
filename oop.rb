# Write a class called Unicorn
# it should have a dynamic name attribute
# it should have a color attribute, that is silver by default
# it should have a method called "say" that returns whatever string is passed in, with "*~*" at the beginning and end of the string

class Unicorn
  def initialize(name)
    @name = name
    @color = "silver"
  end

  def say(speak)
    "*~* #{speak} *~*"
  end
end

unicorn1 = Unicorn.new("Frank")
pp unicorn1
p unicorn1.say("Itz ya boi Frank")


#  Write a class called Vampire
#  it should have a dynamic name attribute
#  it should have a pet attribute, that is a bat, by default BUT it could be dynamic if info is passed in initially
#  it should have a thirsty attribute, that is true by default
#  it should have a drink method. When called, the thirsty attribute changes to false
puts "---------------------------"

class Vampire
  def initialize(name, pet = "bat")
    @name = name
    @pet = pet
    @thirsty = true
  end

  def drink
    @thirsty = false
  end
end
vamp1 = Vampire.new("Frank", "Dog")
p vamp1
vamp1.drink
p vamp1

#  Write a Dragon class
#  it should have a dynamic name attribute (string)
#  it should have a dynamic rider attribute (string)
#  it should have a dynamic color attribute (string)
#  it should have a is_hungry attribute that is true by default
#  it should have a eat method. If the dragon eats 4 times, it is no longer hungry
puts "-------------------------------"

class Dragon
  def initialize(name, rider, color)
    @name = "#{name}"
    @rider = "#{rider}"
    @color = "#{color}"
    @is_hungry = true
    @times_fed = 0
  end
  def eat
    @times_fed = @times_fed + 1
    if @times_fed >= 4
      @is_hungry = false
    end
  end
end

dragon1 = Dragon.new("Frank", "Joe", "blue")
p dragon1

dragon1.eat
p dragon1
dragon1.eat
p dragon1
dragon1.eat
p dragon1
dragon1.eat
p dragon1

#  Write a Hobbit class
#  it should have a dynamic name attribute (string)
#  it should have a dynamic disposition attribute (string)
#  it should have an age attribute that defaults to 0
#  it should have a celebrate_birthday method. When called, the age increases by 1
#  it should have an is_adult attribute (boolean) that is false by default. once a Hobbit is 33, it should be an adult
#  it should have an is_old attribute that defaults to false. once a Hobbit is 101, it is old.
#  it should have a has_ring attribute. If the Hobbit's name is "Frodo", true, if not, false.
puts "------------------------"

class Hobbit
  def initialize (name, disposition, age = 0)
    @name = "#{name}"
    @disposition = "#{disposition}"
    @age = age
    @is_adult = if @age >= 33
                  true
                else
                  false
                end
    @is_old = if @age >= 101
                  true
                else
                  false
                end
    @has_ring = if name == "Frodo"
                  true
                else
                  false
                end
  end
  def celebrate_birthday
    @age = @age + 1
    if @age >= 33
      @is_adult = true
    else
    end
    if @age >= 101
      @is_old = true
    else
    end
  end
end

hobbit1 = Hobbit.new("Frodo", "kind")
hobbit2 = Hobbit.new("Frank", "Lazy", 45)
hobbit3 = Hobbit.new("Joe", "Funny", 150)
p hobbit1
p hobbit2
p hobbit3
