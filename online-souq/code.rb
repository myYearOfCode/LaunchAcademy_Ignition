possibleItems = [
  "old paperback book",
  "potato",
  "red onion",
  "dried lemon",
  "frankincense",
  "moon dust",
  "saffron",
  "glass spice jar",
  "red fabric",
  "orange fabric",
  "handicrafts",
  "small Persian rug",
  "used medium space suit",
  "heffalump shag rug",
  "woozle hide purse"
]
finished = false
puts("hello shopper! What is your name?")
name = gets.chomp
cart = []
addToStock = []
item = nil

while (!finished) do
    puts("#{name}, what would you like to buy today?")
    puts("Type FINISHED when you are done shopping")
    item = gets.chomp

    if item == "FINISHED"
      finished = true
    end

    if !possibleItems.include?(item) && !finished
      addToStock.push(item)
      puts("We don't have that in stock. I'll try to get more.")
    end

  if !finished && possibleItems.include?(item)
    puts("ok, I'll put that in your cart.")
    puts
    cart.push(item)
    item = nil
  end
end
puts ("#{name}, thanks for trying our online Souq platform. Here is a list of the items in
your cart!:")
cart.each do |item|
  print "* "
  puts(item)
end

puts ("Btw, we noticed you tried entering in some items that aren't part of the online
Souq. We don't have the following items yet but will let you know if they show
up!:")
addToStock.each do |item|
  print "* "
  puts(item)
end
