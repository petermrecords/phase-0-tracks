class Puppy

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

  def speak(x)
    puts "woof! "*x
  end

  def roll_over
    puts "*rolls over*"
  end

  def dog_years(y)
    age = y*7
    age
  end

  def shake
    puts "*shakes owners hand*"
  end

  def initialize
    puts "Initializing new puppy instance ..."
  end

end

fido = Puppy.new

fido.fetch("ball")
fido.speak(10)
fido.roll_over
p fido.dog_years(7)
fido.shake

puts nil

class Cat

  def initialize
    puts "Initializing new cat instance ..."
  end

  def meow(x)
    puts "meow! "*x
  end

  def scratch(y)
    puts "Scratches #{y}"
  end

end

cats = []

50.times do 
  cats << Cat.new
end

# kitty.meow(3)
# kitty.scratch("my arm")

cats.each do |kitty|
  kitty.meow(3)
  kitty.scratch("my arm")
end