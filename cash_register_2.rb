def total_amt(sales)
  total = 0

  sales.each do |price|
    total = total + price
  end
  total
end

sales = []

puts "What is the sale price: "

input = gets.chomp

while input != "done"
  sales<<input.to_i
  puts "Subtotal: $#{total_amt(sales)}"
  puts "What is the sale price: "
  input = gets.chomp
end

puts "Here are your item prices:"

sales.each do |price|
  puts "$#{price}"
end

puts "The total amount due is $ #{total_amt(sales)}"

# How much did the customer give you?
print "What is the amount tendered: "
payment = gets.chomp
payment = payment.to_f

# Is this amount enough?
change = payment - total_amt(sales)
change = "%.2f" % change
owed = total_amt(sales) - payment
owed = "%.2f" % owed
time = Time.now.strftime("%Y-%m-%d %H:%M")

if payment == total_amt(sales)
  print "Have a nice day!"
else
  if payment > total_amt(sales)
    print "\n===Thank You!===\n The total change due is $#{change}\n\n #{time}\n\n"
  else
    print "WARNING: Customer still owes $#{owed}! Exiting..."
  end
end
