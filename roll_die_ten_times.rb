# dice = Random.rand(1..6)
# puts "The result of your roll is #{dice}."

n = 0
until n == 10
  dice = Random.rand(1..6)
  puts "The result of your roll is #{dice}."
  n += 1
end
