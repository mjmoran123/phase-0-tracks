class Puppy

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

  def speak(number_of_woofs)
  	number_of_woofs.times { puts "Woof!" }
  end

  def roll_over
  	puts "*rolls over*"
  end

  def dog_years(human_age)
  	7 * human_age
  end

  def play_dead
  	puts "..."
  end

end

spike = Puppy.new
spike.fetch("ball")
spike.speak(3)
spike.roll_over
p spike.dog_years(10)
spike.play_dead

