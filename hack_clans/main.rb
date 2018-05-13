require_relative 'engine'
require_relative 'players/perrodactilo'
require_relative 'players/pupudrilo'
require_relative 'players/tom_cruise'
require_relative 'players/ninjaloco'
require_relative 'players/zombieloco'
require_relative 'players/mageloco'
require_relative 'players/sb'

engine = Engine.new

#char1 = Perrodactilo.new("Pedro", :green, engine)
player1 = Pupudrilo.new("Pupudrilo", :red, engine)
player2 = Maxduro.new("Maxduro", :green, engine)

engine.init_game player1, player2
engine.go!
