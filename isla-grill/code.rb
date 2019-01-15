# 20190114
dinner_total = 178
tip = 20
tip_amount = dinner_total * (tip/100.00)
# be sure to add a decimal place to make the output a float
tipped_total = dinner_total + (dinner_total * (tip/100.00))

puts format("The total bill is $%.2f", tipped_total)
puts format("You should tip $%.2f", tip_amount)
