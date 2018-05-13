require 'colorize'

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
puts "         Invertir Arreglos".yellow
puts "**************************************".yellow


# Arreglo de 5000 numeros aleatorios entre 1 y 200

Arreglo=[12]
ArregloInvertido=[]

for i in (0..11) #lo lleno
	Arreglo[i] = rand(11)
end

puts "#{Arreglo}"

	for i in (0..11/2)#lo lleno
		a=Arreglo[i]
		Arreglo[i]=Arreglo[Arreglo.length - i - 1]
		Arreglo[Arreglo.length - i - 1]=a
	end
	
puts "#{Arreglo}"
