require_relative '../setup'

puts "Exercise 1"
puts "----------"

# Your code goes below here ...
Store.create(name: 'Sears', annual_revenue: 1000000, mens_apparel: false, womens_apparel: true)
Store.create(name: 'Zellers', annual_revenue: 0, mens_apparel: true, womens_apparel: true)
Store.create(name: 'Metro', annual_revenue: 500000, mens_apparel: false, womens_apparel: false)

puts Store.count