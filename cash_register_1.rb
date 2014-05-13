# How much does the coffee cost?
print "What is the amount due: "

price = gets.chomp
price = price.to_f

# How much did the customer give you?
print "What is the amount tendered: "
payment = gets.chomp
payment = payment.to_f

# Is this amount enough?
change = payment - price
change = "%.2f" % change
owed = price - payment
owed = "%.2f" % owed
time = Time.now.strftime("%Y-%m-%d %H:%M")

if payment == price
  print "Have a nice day!"
else
  if payment > price
    print "\n===Thank You!===\n The total change due is $#{change}\n\n #{time}\n\n"
  else
    print "WARNING: Customer still owes $#{owed}! Exiting..."
  end
end
