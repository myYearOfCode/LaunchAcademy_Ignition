# 20190114
require 'pry'
items_we_have = "chips popcorn skittles granola mentos gum cheetos m&ms"

def find_matches(string, search)
  matches = 0
  pointer = 0
  # binding.pry
  while string.length > 0
    index_of_item = string.index(search)
    if index_of_item != nil # a match is found
      pointer = index_of_item # move pointer
      matches += 1 # update matches count
      string = string.slice(pointer + 1,string.length) # trim string
    else
      return matches
    end
  end
end

puts("What are you hungry for?")
item_you_want = gets.chomp
index_of_item = items_we_have.index(item_you_want)
numMatches = find_matches(items_we_have,item_you_want)

if numMatches == 1
  puts "Item index:"
  puts (index_of_item)
elsif numMatches > 1
  puts ("There are #{numMatches} matches, try entering a more specific search.")
else
  puts ("Sorry, we don't have any #{item_you_want} today.")
end
