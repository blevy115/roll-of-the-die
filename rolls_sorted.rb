# dice = Random.rand(1..6)
# puts "The result of your roll is #{dice}."

n = 0
sorted = []
until n == 10
  dice = Random.rand(1..6)
  result = "The result of your roll is #{dice}."
  sorted << result
  n += 1
end

puts sorted.sort!
