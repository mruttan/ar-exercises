require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"


class Store < ActiveRecord::Base
  has_many :employees
end

class Employees < ActiveRecord::Base
  belongs_to :store
end

@store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 60)
@store2.employees.create(first_name: "Tupac", last_name: "Shakur", hourly_rate: 40)
@store2.employees.create(first_name: "Biggie", last_name: "Smalls", hourly_rate: 10)
@store1.employees.create(first_name: "Tom", last_name: "Green", hourly_rate: 22)
@store1.employees.create(first_name: "Ashton", last_name: "Kutcher", hourly_rate: 33)