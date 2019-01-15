# 20190114
width = 10
length = 4.95
depth = 12 # depth is measured in inches
price = nil
depth /= 12.0 # depth comverted to feet (float)
cli = false

# OPTIONAL cli interface
if cli
  puts('Please enter your length in feet.')
  length = gets.chomp.to_f
  puts('Please enter your width in feet.')
  width = gets.chomp.to_f
  puts('Please enter your depth in inches.')
  depth = gets.chomp.to_f
end

cubicArea = (width * depth * length).ceil #round up. Greedy martian shovelers...
puts('Cubic volume:')
puts(cubicArea.to_s + " Cubic Feet")

# Switch statement!
case cubicArea
  when 0..49
    price =  20
  when 50..149
    price =  50
  when 150..299
    price = 100
  else
    price = 150
end

puts("Price:")
puts format("$%.2f",price)

  # 0 - 49 cubic ft:  $20
  # 50 - 149 cubic ft: $50
  # 150 - 299 cubic ft: $100
  # 300+ cubic ft: $150
