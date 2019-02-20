transactions = [50_000, -2_000, -25_000, 4_000, -12_000, 5_000, -800, -900, 43_000, -30_000, 15_000, 62_000, -50_000, 42_000]

# Write Ruby code to find out the answers to the following questions. Be sure to make sure that your output and format matches what is given on the assignment page:

# * What is the value of the first transaction?
puts "The first transaction is: "
puts "#{transactions[0]}"

# * What is the value of the second transaction?
puts "The second transaction is: "
puts "#{transactions[1]}"

# * What is the value of the fourth transaction?
puts "The fourth transaction is: "
puts "#{transactions[3]}"

# * What is the value of the last transaction?
puts "The last transaction is: "
puts "#{transactions.last}"

# * What is the value of the second from last transaction?
puts "The second from the last transaction is: "
puts "#{transactions[-2]}"

# * What is the value of the 5th from last transaction?
puts "The fifth from the last transaction is: "
puts "#{transactions[-5]}"

# * What is the value of the transaction with index 5?
puts "The transaction with the index of 5 is: "
puts "#{transactions[5]}"

# * How many transactions are there in total?
puts "The total number of transactions is: "
puts "#{transactions.length}"

# * How many positive transactions are there in total?
count = 0
transactions.each do |transaction|
  if transaction > 0
    count += 1
  end
end
puts "The total number of positive transactions is: "
puts "#{count}"

# * How many negative transactions are there in total?
numNegative = 0
transactions.each do |transaction|
  if transaction < 0
     numNegative += 1
   end
end
puts "The total number of negative transactions is: "
puts "#{numNegative}"

# * What is the largest withdrawal?
largest = 0
transactions.each do |transaction|
  if transaction < largest
    largest = transaction
   end
end
puts "The largest withdrawal is: "
puts "#{largest}"

# * What is the largest deposit?
largest = 0
transactions.each do |transaction|
  if transaction > largest
    largest = transaction
   end
end
puts "The largest deposit is: "
puts "#{largest}"

# * What is the smallest withdrawal?
largest = - 1.0/0 #negative infinity. wow!
transactions.each do |transaction|
  if (transaction > largest) && (transaction < 0)
    largest = transaction
   end
end
puts "The smallest withdrawal is: "
puts "#{largest}"

# * What is the smallest deposit?
largest =  1.0/0 # infinity. wow!
transactions.each do |transaction|
  if (transaction < largest) && (transaction > 0)
    largest = transaction
   end
end
puts "The smallest deposit is: "
puts "#{largest}"

# * What is the total value of all the transactions?
sum = 0
transactions.each do |transaction|
  sum += transaction
end
puts "The total value of all the transactions is: #{sum}"

# * If Dr. Dre's initial balance was $239,900 in this account, what is the value of his balance after his all of the transactions in our transactions array have been run?
sum = 239900
transactions.each do |transaction|
  sum += transaction
end
puts "Dr. Dre's balance is: "
puts "#{sum}"

best_records = {
 "Tupac"=>"All Eyez on Me",
 "Eminem"=>"The Marshall Mathers LP",
 "Wu-Tang Clan"=>"Enter the Wu-Tang (36 Chambers)",
 "Led Zeppelin"=>"Physical Graffiti",
 "Metallica"=>"The Black Album",
 "Pink Floyd"=>"The Dark Side of the Moon",
 "Pearl Jam"=>"Ten",
 "Nirvana"=>"Nevermind"
 }

# Write Ruby code to find out the answers to the following questions:

# * How many records are in `best_records`?
puts "Total records: "
puts "#{best_records.length}"

# * Who are all the artists listed?
puts "All of the artists: "
best_records.keys.each do |key|
  puts "#{key}"
end

# * What are all the album names in the hash?
puts "All of the albums: "
best_records.values.each do |key|
  puts "#{key}"
end

# * Delete the `Eminem` key-value pair from the list and print an updated list of just the artists.
best_records.delete('Eminem')
puts "List of artists with Eminem deleted: "
best_records.each do |key, value|
  puts "#{key}: #{value}"
end

# * Add your favorite musician and their best album to the list and print an updated list of all the artists and albums:
best_records['Johnny Cash']  = "At Folsom Prison"
puts "My favorite musician added: "
best_records.each do |key, value|
  puts "#{key}: #{value}"
end

# * True or False: `Nirvana` is included in `best_records`
puts "True or False: `Nirvana` is included: #{best_records.include?('Nirvana')}"


# * Change `Nirvana`'s album to another and then print the updated list of Artists and Albums.
best_records['nirvana'] = "blue"
puts "Nirvana's album updated: "
best_records.each do |key, value|
  puts "#{key}: #{value}"
end

# * True or False: `Soundgarden` is included in `best_records`?
puts "True or False: `Soundgarden` is included:"
puts "#{best_records.include?('Soundgarden')}"

# * If `Soundgarden` is not in `best_records` then add a key-value pair for the band and then print the updated list of Artists and Albums.
if !(best_records.include?('Soundgarden'))
  best_records['Soundgarden'] = "head like a hole"
end
puts "Soundgarden added if it's not already there: "
best_records.each do |key, value|
  puts "#{key}: #{value}"
end

# * Which key-value pairs have a key that has a length less than or equal to 6 characters?
outputHash = {}
best_records.each do |record, value|
  if record.length <= 6
    outputHash[record] = value
  end
end
outString = "key-value pairs have a key that has a length less than or equal to 6 characters: "
outputHash.each do |key, value|
  outString += "#{key}: #{value}"
end
puts outString

#Which key-value pairs have a value that is greater than 10 characters?
outputHash = {}
best_records.each do |record, value|
  if record.length > 10
    outputHash[record] = value
  end
end
puts "key-value pairs have a key that has a length greater than 10 characters: "
outputHash.each do |key, value|
  puts "#{key}: #{value}"
end
