permutation = []
combo =[]

until permutation.length == 36
  dice_1 = Random.rand(1..6)
  dice_2 = Random.rand(1..6)
  combo = [dice_1, dice_2]
  unless permutation.include? combo
  permutation << combo
  end
end
print permutation.sort
