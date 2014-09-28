puts "How much was your meal today?"
meal = Float(gets.chomp)

puts "What is the local tax rate?"
tax = Float(gets.chomp)

puts "What tip percentage would you like to leave?"
tip = Float(gets.chomp)

def calculate_value(cost, percentage)
	return cost * percentage / 100
end

# dollar cost of tax
tax_value = calculate_value(meal, tax)

# cost of meal before tip
meal_with_tax = meal + tax_value

# dollar cost of tip
tip_value = calculate_value(meal_with_tax, tip)

total_cost = meal_with_tax + tip_value

puts "The pre-tax cost of your meal was $#{'%.2f' % meal}."
puts "At #{tax}%, the tax for this meal is $#{'%.2f' % meal_with_tax}."
puts "For a #{tip}% tip, you should leave $#{'%.2f' % tip_value}."
puts "The grand total for this meal is then $#{'%.2f' % total_cost}."