require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'

puts "Exercise 4"
puts "----------"

# Your code goes here ...
atlantis = Store.create(name: 'Atlantis', annual_revenue: 224000, mens_apparel: true, womens_apparel: false)
el_dorado = Store.create(name: 'El_Dorado', annual_revenue: 1900000, mens_apparel: false, womens_apparel: true)
shangri_la = Store.create(name: 'Shangri_La', annual_revenue: 430000, mens_apparel: true, womens_apparel: true)

@mens_stores = Store.where('mens_apparel = true')
@mens_stores.each do |store|
  puts "#{store.name} has #{store.annual_revenue}"
end

@womens_stores = Store.where('womens_apparel = true AND annual_revenue < 1000000')
@womens_stores.each do |store|
  puts "#{store.name} has #{store.annual_revenue}"
end