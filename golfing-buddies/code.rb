golf_contacts = {
  jose: 'workerBee@example.com',
  samantha: 'golfCartRacer@example.com',
  talia: 'pro_golfer89@example.com',
  mike: 'alwaysAtTheBeach@example.com',
  olivia: 'didYouSeeWhereThatWent@example.com',
  joan: 'bestShortGameEver@example.com'
}

outArray = []
[:samantha,:talia,:olivia].each do |name|
  outArray.push(golf_contacts[name])
end
puts outArray.join(', ')
