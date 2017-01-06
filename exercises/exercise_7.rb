require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'

puts "Exercise 7"
puts "----------"

class Store < ActiveRecord::Base
  validates_length_of :name, minimum: 3
  validates :annual_revenue, numericality: { only_integer: true, greater_than: 0 }
end

class Employees < ActiveRecord::Base
  validates_presence_of :first_name
  validates_presence_of :last_name
  validates_inclusion_of :hourly_rate, in: 10..99999
  validates_presence_of :store_id
end

puts "Input a Store Name!"
@user_input = gets.chomp


Store.create(name: @user_input)