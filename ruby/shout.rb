# module Shout
#   def self.yell_angrily(words)
#     words + "!!!" + " :("
#   end

#   def self.yell_happily(words)
#     words + "!!!" + " :D"
#   end
# end

# p Shout.yell_angrily("Hey You")
# p Shout.yell_happily("Yo")

module Shout
	def yell_angrily(words)
    	words.upcase + "!!!" + " :("
  	end

  	def yell_happily(words)
    	words.upcase + "!!!" + " :D"
  	end
end

class Mom
	include Shout
end

class Dad
	include Shout
end

dad = Dad.new
puts dad.yell_angrily("Stop doing that")
puts dad.yell_happily("Yay")

mom = Mom.new
puts mom.yell_happily("Good job")
puts mom.yell_angrily("Stop")