data = [
  {First_Name: "Jon", Last_Name: "Smith", Age: 25, Income: 50000, Household_Size: "1", Gender: "Male", Education: "College"},
  {First_Name: "Jane", Last_Name: "Davies", Age: 30, Income: 60000, Household_Size:"3", Gender:"Female", Education:"High School"},
  {First_Name: "Sam", Last_Name: "Farelly", Age: 32, Income: 80000, Household_Size: "2", Gender: "Unspecified", Education: "College"},
  {First_Name: "Joan", Last_Name: "Favreau", Age: 35, Income: 65000, Household_Size:"4", Gender:"Female", Education:"College"},
  {First_Name: "Sam", Last_Name: "McNulty", Age: 38, Income: 63000, Household_Size:"3", Gender:"Male", Education:"College"},
  {First_Name: "Mark", Last_Name: "Minahan", Age: 48, Income: 78000, Household_Size:"5", Gender:"Male", Education:"High School"},
  {First_Name: "Susan", Last_Name: "Umani", Age: 45, Income: 75000, Household_Size:"2", Gender:"Female", Education:"College"},
  {First_Name: "Bill", Last_Name: "Perault", Age: 24, Income: 45000, Household_Size: "1", Gender: "Male", Education: "Did Not Complete High School"},
  {First_Name: "Doug", Last_Name: "Stamper", Age: 45, Income: 75000, Household_Size: "1", Gender: "Male", Education: "College"},
  {First_Name: "Francis", Last_Name: "Underwood", Age: 52, Income: 100000, Household_Size: "2", Gender: "Male", Education: "College"}
]

statistics = {
    ages: [],
    incomes: [],
    household_sizes: [],
    gender: {
      male: 0,
      female: 0,
      unspecified: 0
    },
    education: {
      college: 0,
      high_school: 0,
      dnfhs: 0
    }
}

data.each do |voter|
  statistics[:ages].push(voter[:Age])
  statistics[:incomes].push(voter[:Income])
  statistics[:household_sizes].push(voter[:Household_Size])

  if voter[:Gender] == "Male"
    statistics[:gender][:male] += 1
  elsif voter[:Gender] == "Female"
    statistics[:gender][:female] += 1
  else
    statistics[:gender][:unspecified] += 1
  end

  if voter[:Education] == "College"
    statistics[:education][:college] += 1
  elsif voter[:Education] == "High School"
    statistics[:education][:high_school] += 1
  elsif voter[:Education] == "Did Not Complete High School"
    statistics[:education][:dnfhs] += 1
  end
end

totalAges = 0
statistics[:ages].each do |age|
  totalAges += age
end

totalIncome = 0
statistics[:incomes].each do |income|
  totalIncome += income
end

totalHousehold = 0
statistics[:household_sizes].each do |household_size|
  totalHousehold += household_size.to_i
end

# Average Age: 37.4
puts "Average Age: #{totalAges/1.0/data.length}"

# Average Income: 69100.0
puts "Average Income: #{totalIncome/1.0/data.length}"

# Average Household Size: 2.4
puts "Average Household Size: #{totalHousehold/1.0/data.length}"

# Female %: 30.0
puts "Female %: #{(statistics[:gender][:female]/1.0/data.length)*100}"

# Male %: 60.0
puts "Male %: #{(statistics[:gender][:male]/1.0/data.length)*100}"

# Unspecified Gender %: 10.0
puts "Unspecified Gender %: #{(statistics[:gender][:unspecified]/1.0/data.length)*100}"

# College %: 70.0
puts "College %: #{(statistics[:education][:college]/1.0/data.length)*100}"

# High School %: 20.0
puts "High School %: #{(statistics[:education][:high_school]/1.0/data.length)*100}"

# Did Not Finish High School %: 10.0
puts "Did Not Finish High School %: #{(statistics[:education][:dnfhs]/1.0/data.length)*100}"
