permutation = []
combo =[]
total =[]
a = 1
puts "How many sides does Dice A have?"
b = gets.chomp.to_i
puts "How many sides does Dice B have?"
c = gets.chomp.to_i
n = 0
until permutation.length == b*c
  dice_1 = Random.rand(a..b)
  dice_2 = Random.rand(a..c)
  combo = [dice_1, dice_2]
  n += 1
  # combo = combo.join(" ")
  unless permutation.include? combo
  permutation << combo
  end
end
permutation = permutation.sort
# print permutation
permutation.each do |combo|
  sum = combo[0] + combo [1]
  combo = combo.join(", ")
  # puts combo
  total << sum
end
#
i = 0
puts "Dice Roll: A, B"
until i == permutation.length
  puts "Dice Roll: #{permutation[i].join(", ")}  Total: #{total[i]}"
  i += 1
end


total_times = Hash.new 0
total.each do |sum|
  total_times[sum] += 1
end

total_times.each do |total, times|
  puts "#{total} occurs #{times} times"
end
puts "There are #{permutation.length} possible permuations."
puts "This program required #{n} Randon Number Generator runs to complete."
