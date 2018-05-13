=begin
Programa desarrollado por Simon Bermudez
DEPENDENCIAS:
gem install ai4r / inteligencia artificial para el multiplayer
gem install colorize / para controlar colores del terminal

=end


require 'colorize'
require 'artii'
#logo
puts ""
puts "****************".blue
print "***".blue
print "----------".white
puts "***".blue
print "***".blue
print "-".white
print "****".blue
print "-".white
print "**".blue
print "--".white
puts "***".blue
print "***".blue 
print "-".white
print "****".blue
print "---".white
print "*****".blue
puts "		SIMON".white
print "***".blue 
print "----------".white
print "***".blue
puts "	       BERMUDEZ".white
print "******".blue
print "---".white
print "***".blue
print "-".white
puts "***".blue
print "****".blue
print "--".white
print "**".blue
print "-".white
print "***".blue
print "-".white
puts "***".blue
print "***".blue
print "----------".white
puts "***".blue
puts "****************".blue
puts ""
puts "**************************************".yellow
puts "        RETO FINAL: REVERSI".yellow
puts "**************************************".yellow

Tab =[[8],[8]]

for i in (0..7) do
	for j in (0..7) do
	Tab[](i,j) = ""
 	end
end

puts "#{Tab}"
