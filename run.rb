require_relative "lib/Animal.rb"
require_relative "lib/Zoo.rb"
require 'pry'


#Test your code here
al_zoo = Zoo.new("al", "NYC")
akl_zoo = Zoo.new("akl", "LongIsland")

dog = Animal.new("dog", "Dog", 20, al_zoo)
cat_1 = Animal.new("cat", "Neko", 20, akl_zoo)
cat_2 = Animal.new("cat", "cat_2", 20, akl_zoo)
cat_3 = Animal.new("bird", "cat_3", 20, akl_zoo)
cat_4 = Animal.new("fish", "cat_2", 20, akl_zoo)
binding.pry
puts "done"
