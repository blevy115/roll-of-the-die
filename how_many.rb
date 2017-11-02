permutation = []
combo =[]
total =[]
a = 1
b = 6
dice = Random.rand(a..b)

until permutation.length == b**2
  dice_1 = Random.rand(a..b)
  dice_2 = Random.rand(a..b)
  combo = [dice_1, dice_2]
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

i = 0
until i == permutation.length
  puts "Dice Roll: #{permutation[i].join(", ")}  Total: #{total[i]}"
  i += 1
end
puts "There are #{permutation.length} possible permuations."
