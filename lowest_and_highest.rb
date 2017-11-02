# dice = Random.rand(1..6)
# puts "The result of your roll is #{dice}."

n = 0
sorted = []
until n == 5
  dice = Random.rand(1..6)
  sorted << dice
  n += 1
end


sorted.sort!.each do |roll|
  puts "The result of your roll is #{roll}."
end
puts "The lowest number is #{sorted.first}."
puts "The highest number is #{sorted.last}."
