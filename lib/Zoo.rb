class Zoo
  attr_accessor :name, :location
  @@all = []
  def initialize(name = nil, location = nil)
    @name = name
    @location = location
    @@all << self
  end
  def self.all
    @@all
  end
  def animals
    Animal.all.select {|animal| animal.zoo == self}
  end
  def animal_species
    ary = Animal.all.select {|animal| animal.zoo == self}
    ary.map do |animal|
      animal.specie
    end.uniq
  end
  def find_by_species (specie)
    ary = Animal.all.select {|animal| animal.zoo == self}
    ary.map do |animal|
      if animal.specie == specie
        animal
      end
    end.compact
  end
  def animal_nicknames
    ary = Animal.all.select {|animal| animal.zoo == self}
    ary.map do |animal|
      animal.nickname
    end
  end
end
