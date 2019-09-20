require("./board")

b = Board.new

start = [0,0]
landing = [2,0]
puts "With arguments start: #{start} and landing: #{landing} expect true"
puts b.can_jump?(start, landing) 

start = [2,0]
landing = [2,0]
puts "With arguments start: #{start} and landing: #{landing} expect false"
puts b.can_jump?(start, landing) 

start = [2,0]
landing = [2,2]
puts "With arguments start: #{start} and landing: #{landing} expect true"
puts b.can_jump?(start, landing) 

start = [2,2]
landing = [0,0]
puts "With arguments start: #{start} and landing: #{landing} expect true"
puts b.can_jump?(start, landing) 

start = [2,2]
landing = [1,1]
puts "With arguments start: #{start} and landing: #{landing} expect false"
puts b.can_jump?(start, landing) 

start = [4,4]
landing = [4,2]
puts "With arguments start: #{start} and landing: #{landing} expect true"
puts b.left?(start, landing) 

start = [4,2]
landing = [4,4]
puts "With arguments start: #{start} and landing: #{landing} expect false"
puts b.left?(start, landing) 

start = [4,4]
landing = [4,2]
puts "With arguments start: #{start} and landing: #{landing} expect false"
puts b.right?(start, landing) 

start = [4,2]
landing = [4,4]
puts "With arguments start: #{start} and landing: #{landing} expect true"
puts b.right?(start, landing) 


start = [4,4]
landing = [4,2]
puts "With arguments start: #{start} and landing: #{landing} expect left"
puts b.left_or_right(start, landing) 

start = [4,2]
landing = [4,4]
puts "With arguments start: #{start} and landing: #{landing} expect right"
puts b.left_or_right(start, landing) 

start = [4,4]
landing = [4,2]
puts "With arguments start: #{start} and landing: #{landing} expect true"
puts b.horizontal?(start, landing) 

start = [3,2]
landing = [4,4]
puts "With arguments start: #{start} and landing: #{landing} expect false"
puts b.horizontal?(start, landing) 

start = [4,4]
landing = [4,2]
puts "With arguments start: #{start} and landing: #{landing} expect false"
puts b.diagonal?(start, landing) 

start = [3,2]
landing = [4,4]
puts "With arguments start: #{start} and landing: #{landing} expect true"
puts b.diagonal?(start, landing) 

start = [2,0]
landing = [0,0]
puts "With arguments start: #{start} and landing: #{landing} expect up"
puts b.up_or_down?(start, landing) 

start = [0,0]
landing = [2,0]
puts "With arguments start: #{start} and landing: #{landing} expect down"
puts b.up_or_down?(start, landing) 