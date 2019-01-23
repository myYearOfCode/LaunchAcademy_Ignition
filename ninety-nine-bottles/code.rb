counter = 99
while counter > 0 do
  while counter > 2 do
    counter % 10 == 0 ? ending = "!" : ending = "."
    puts("#{counter} bottles of beer on the wall, #{counter} bottles of beer#{ending}")
    puts("Take one down and pass it around, #{counter-1} bottles of beer on the wall.")
    puts
    counter -= 1
  end
  while counter == 2 do
    puts("#{counter} bottles of beer on the wall, #{counter} bottles of beer.")
    puts("Take one down and pass it around, #{counter-1} bottle of beer on the wall.")
    puts
    counter -= 1
  end

  while counter == 1 do
    puts("1 bottle of beer on the wall, 1 bottle of beer.")
    puts("Take one down and pass it around, no more bottles of beer on the wall.")
    puts
    counter -= 1
  end
  while counter == 0 do
    puts("No more bottles of beer on the wall, no more bottles of beer.")
    puts("Go to the store and buy some more, 99 bottles of beer on the wall.")
    puts
    counter -= 1
  end
end
