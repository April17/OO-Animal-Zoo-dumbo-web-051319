class Animal
  attr_accessor :weight
  attr_reader :specie, :nickname, :zoo
  @@all = []
  def initialize(specie = nil, nickname = nil, weight = nil, zoo = nil)
    @specie = specie
    @nickname = nickname
    @weight = weight
    @zoo = zoo
    @@all << self
  end
  def self.all
    @@all
  end
  def self.find_by_species(specie)
    @@all.select {|animal| animal.specie == specie}
  end
end
