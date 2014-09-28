meal = 20.00
tax = 7.50
tip = 20

# dollar cost of tax
tax_value = meal * (tax / 100)

# cost of meal before tip
meal_with_tax = meal + tax_value

# dollar cost of tip
tip_value = meal_with_tax * tip / 100

total_cost = meal_with_tax + tip_value

puts "The pre-tax cost of your meal was $#{'%.2f' % meal}."
puts "At #{tax}%, the tax for this meal is $#{'%.2f' % meal_with_tax}."
puts "For a #{tip}% tip, you should leave $#{'%.2f' % tip_value}."
puts "The grand total for this meal is then $#{'%.2f' % total_cost}."