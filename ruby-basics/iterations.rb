shopping_cart = [
  {'name' => "iPad 2", 'price' => 499, 'quantity' => 2},
  {'name' => "iMac 27", 'price' => 1699, 'quantity' => 1},
  {'name' => "MacBook Air 13", 'price' => 1299, 'quantity' => 1}
  ]

sales_tax = {"IL" => 0.115, "IN" => 0.09, "MI" => 0.06, "WI" => 0.056}

params = {
  'name' => "Patrick McProgrammerson",
  'address1' => "222 W. Merchandise Mart Plaza",
  'address2' => "12th Floor",
  'city' => "Chicago",
  'state' => "IL",
  'zip' => "60654"
  }

cust_state = gets.chomp.upcase
cust_sales_tax = sales_tax["#{cust_state}"]

priceProduct= 0
shopping_cart.each do |product|

priceProduct += product["price"] * product['quantity']
end
puts "$#{(priceProduct * (1+cust_sales_tax)).to_i} "
